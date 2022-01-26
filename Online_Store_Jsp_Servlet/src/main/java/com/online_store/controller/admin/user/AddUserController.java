package com.online_store.controller.admin.user;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.online_store.dao.impl.UserDaoImpl;
import com.online_store.model.User;

@WebServlet(urlPatterns = { "/admin/user/add" })
public class AddUserController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/admin/view/user/add-user.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			// Tạo đối tượng để lưu tạm thời file upload lên
			DiskFileItemFactory factory = new DiskFileItemFactory();

			// Đổi thành đường dẫn thư mục, lưu tạm thời file upload lên
			factory.setRepository(
					new File("D:\\Project_Jsp_Servlet\\Online_Store_Jsp_Servlet\\WebContent\\Folder Save File Upload"));

			// Đọc request từ client gửi lên trong form upload
			// Danh sách các trường input từ form client được gọi là FileItem
			ServletFileUpload servletFileUpload = new ServletFileUpload(factory);
			List<FileItem> fieldList = servletFileUpload.parseRequest(req);

			User user = new User();

			// Đọc ra từng input
			for (FileItem item : fieldList) {

				if (item.getFieldName().equals("image")) {
					// Kiểm tra dung lượng xem có upload file hay không
					if (item.getSize() > 0) {
						String name = item.getName(); // Trả về tên file và định dạng file
						String ext = name.substring(name.lastIndexOf(".")); // Lấy ra phần định dạng file

						// Không lấy tên file upload lên vì có thể trùng tên
						String image = System.currentTimeMillis() + ext; // Tên file ảnh mới

						// Tạo file để lưu trữ trên server
						final String UPLOAD_FOLDER = "D:\\Project_Jsp_Servlet\\Online_Store_Jsp_Servlet\\WebContent\\Folder Save File Upload\\images";
						File file = new File(UPLOAD_FOLDER + File.separator + image);

						// Ghi dữ liệu upload lên vào file
						item.write(file);

						user.setImage(image); // Lưu tên file image vào product
					}
				}

				if (item.getFieldName().equals("username")) {
					String username = item.getString();
					user.setUsername(username);
				}

				if (item.getFieldName().equals("password")) {
					String password = item.getString();
					user.setPassword(password);
				}

				if (item.getFieldName().equals("full_name")) {
					String fullName = item.getString();
					user.setFullName(fullName);
				}

				if (item.getFieldName().equals("email")) {
					String email = item.getString();
					user.setEmail(email);
				}

				if (item.getFieldName().equals("phone_number")) {
					String phoneNumber = item.getString();
					user.setPhoneNumber(phoneNumber);
				}

				if (item.getFieldName().equals("address")) {
					String address = item.getString();
					user.setAddress(address);
				}

				if (item.getFieldName().equals("role")) {
					String role = item.getString();
					user.setRole(role);
				}

				user.setActive(true);

				SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
				String registerOn = sdf.format(new Date());
				user.setRegisterOn(registerOn);
			}
			
			UserDaoImpl userDaoImpl = new UserDaoImpl();
			userDaoImpl.addUser(user);

			resp.sendRedirect("/Online_Store_Jsp_Servlet/admin/user/show-all");
		} catch (FileUploadException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
