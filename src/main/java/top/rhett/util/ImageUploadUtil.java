package top.rhett.util;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public class ImageUploadUtil {
	
	public static void imageUpload(MultipartFile file, HttpServletResponse response,HttpServletRequest request) throws IllegalStateException, IOException {
		PrintWriter writer = response.getWriter();
		String contentType = file.getContentType();
		String suffix = "";
		if (contentType.equals("image/png") || contentType.equals("image/x-png")) {
			suffix = ".png";
		} else if (contentType.equals("image/pjpeg") || contentType.equals("image/jpeg")) {
			suffix= ".jpg";
		} else if (contentType.equals("image/gif")) {
			suffix = ".gif";
		} else if (contentType.equals("image/bmp")) {
			suffix = ".bmp";
		} else {
			writer.println("<script type=\"text/javascript\">window.parent.CKEDITOR.tools.callFunction(" + 1 + ", '', '文件格式不正确');</script>");
		}
		
		String realPath = request.getSession().getServletContext().getRealPath("/");
		/*String realPath = "E:/workspace/myblog/src/main/webapp";*/
		
		String uuid = UUID.randomUUID().toString().replaceAll("-", "");
		
		String path = "/image/" + uuid + suffix;
		
		String relativePath = request.getContextPath() + "/image/" +  uuid + suffix;
		
		File uploadFile = new File(realPath + path);
		
		file.transferTo(uploadFile);
		
		writer.println("<script type=\"text/javascript\">window.parent.CKEDITOR.tools.callFunction(" + 1 + ", '" + relativePath  + "', '');</script>");
		
	}
	
	
}
