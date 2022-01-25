package com.online_store.controller.admin.product;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.online_store.dao.impl.CategoryDaoImpl;
import com.online_store.dao.impl.ProductDaoImpl;
import com.online_store.model.Category;
import com.online_store.model.Product;

@WebServlet(urlPatterns = { "/admin/product/update" })
public class UpdateProductController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Lấy ra thông tin chi tiết sản phẩm
		int id = Integer.valueOf(req.getParameter("id"));

		ProductDaoImpl productDaoImpl = new ProductDaoImpl();
		Product product = productDaoImpl.getProductById(id);

		req.setAttribute("product", product);

		// Lấy ra danh sách category
		CategoryDaoImpl categoryDaoImpl = new CategoryDaoImpl();
		List<Category> listCategory = categoryDaoImpl.getAllCategory();

		req.setAttribute("listCategory", listCategory);

		req.getRequestDispatcher("/admin/view/product/update-product.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// Tạo đối tượng để lưu tạm thời file upload lên
			DiskFileItemFactory factory = new DiskFileItemFactory();

			// Đổi thành đường dẫn thư mục, lưu tạm thời file upload lên
			factory.setRepository(new File("D:\\Project_Jsp_Servlet\\Online_Store_Jsp_Servlet\\WebContent\\Folder Save File Upload"));

			// Đọc request từ client gửi lên trong form upload
			// Danh sách các trường input từ form client được gọi là FileItem
			ServletFileUpload servletFileUpload = new ServletFileUpload(factory);
			List<FileItem> fieldList = servletFileUpload.parseRequest(req);

			Product product = new Product();

			// Đọc ra từng input
			for (FileItem item : fieldList) {
				if (item.getFieldName().equals("id")) {
					String id = item.getString();
					product.setId(Integer.parseInt(id));
				}

				if (item.getFieldName().equals("image")) {
					if (item.getSize() > 0) { // Kiểm tra dung lượng xem có upload file hay không
						String name = item.getName(); // Trả về tên file và định dạng file
						String ext = name.substring(name.lastIndexOf(".")); // Lấy ra phần định dạng file

						// Không lấy tên file upload lên vì có thể trùng tên
						String image = System.currentTimeMillis() + ext; // Tên file ảnh mới

						// Tạo file để lưu trữ trên server
						final String UPLOAD_FOLDER = "D:\\Project_Jsp_Servlet\\Online_Store_Jsp_Servlet\\WebContent\\Folder Save File Upload\\images";
						File file = new File(UPLOAD_FOLDER + File.separator + image);

						// Ghi dữ liệu upload lên vào file
						item.write(file);

						product.setImage(image); // Lưu tên file image vào product
					} else { // Nếu không upload file thì set lại giá trị cũ
						ProductDaoImpl productDaoImpl = new ProductDaoImpl();
						String image = productDaoImpl.getProductById(product.getId()).getImage();

						product.setImage(image);
					}
				}

				if (item.getFieldName().equals("name")) {
					String name = item.getString();
					product.setName(name);
				}

				if (item.getFieldName().equals("id_category")) {
					String categoryId = item.getString();

					Category category = new Category();
					category.setId(Integer.parseInt(categoryId));
					product.setCategory(category);
				}

				if (item.getFieldName().equals("price")) {
					String price = item.getString();
					product.setPrice(Double.parseDouble(price));
				}

				if (item.getFieldName().equals("amount")) {
					String amount = item.getString();
					product.setAmount(Integer.parseInt(amount));
				}

				if (item.getFieldName().equals("rating")) {
					String rating = item.getString();
					product.setRating(Integer.parseInt(rating));
				}

				if (item.getFieldName().equals("description")) {
					String description = item.getString();
					product.setDescription(description);
				}
			}

			ProductDaoImpl producDaoImpl = new ProductDaoImpl();
			producDaoImpl.updateProduct(product);

			resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/product/show-all");
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
