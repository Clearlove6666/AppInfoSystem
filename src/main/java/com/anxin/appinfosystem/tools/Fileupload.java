package com.anxin.appinfosystem.tools;

import com.anxin.appinfosystem.pojo.AppInfo;
import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.HashMap;
import java.util.UUID;

public class Fileupload {
    /**
     * 文件上传的方法
     * @param attach
     * @param request
     * @param path1
     * @return
     */
    public static boolean fileupload(MultipartFile attach, HttpServletRequest request,HashMap<String,Object> path1,Integer type){
             String logoPicPath=null;
            String logoLocPath=null;
            String path=request.getSession().getServletContext().getRealPath("statics"+ File.separator+"uploadfiles");
            String oldFileName=attach.getOriginalFilename();//原文件名
            String prefix= FilenameUtils.getExtension(oldFileName);//原文件后缀
            int filesize=500000000;
            if(attach.getSize()>filesize){//上传大小不得超过50k
                request.setAttribute("fileUploadError",Constants.FILEUPLOAD_ERROR_4);
                return false;
            }else if(type==1&&(prefix.equalsIgnoreCase("jpg")||prefix.equalsIgnoreCase("png")||
                    prefix.equalsIgnoreCase("jepg")||prefix.equalsIgnoreCase("pneg"))){//上传图片格式
                String fileName= UUID.randomUUID() +".jpg";//上传LOGO图片命名:apk名称.apk
                File targetFile=new File(path,fileName);
                if(!targetFile.exists()){
                    targetFile.mkdirs();
                }
                try {
                    attach.transferTo(targetFile);
                } catch (Exception e) {
                    e.printStackTrace();
                    request.setAttribute("fileUploadError",Constants.FILEUPLOAD_ERROR_3);
                    return false;
                }
                path1.put("logoPicPath",request.getContextPath()+"/statics/uploadfiles/"+fileName);
                path1.put("logoLocPath",path+File.separator+fileName);
            }else if(type==2&&prefix.equalsIgnoreCase("apk")){
                String fileName= UUID.randomUUID() +".apk";//上传LOGO图片命名:apk名称.apk
                File targetFile=new File(path,fileName);
                if(!targetFile.exists()){
                    targetFile.mkdirs();
                }
                try {
                    attach.transferTo(targetFile);
                } catch (Exception e) {
                    e.printStackTrace();
                    request.setAttribute("fileUploadError",Constants.FILEUPLOAD_ERROR_3);
                    return false;
                }
                path1.put("logoPicPath",request.getContextPath()+"/statics/uploadfiles/"+fileName);
                path1.put("logoLocPath",path+File.separator+fileName);
            }else{
                request.setAttribute("fileUploadEoor",Constants.FILEUPLOAD_ERROR_3);
                return false;
            }
        return true;
    }
}
