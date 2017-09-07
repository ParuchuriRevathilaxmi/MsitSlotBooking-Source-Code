package com.restapi;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class Connection 
{
	static String BASE_URL="http://localhost:8081/practicum/webapi/";
	
	public  static String connection(String tag)
	 {
		try
		{
		URL url = new URL(BASE_URL+tag);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Accept", "application/json");

       if (conn.getResponseCode() != 200)
        {
            throw new RuntimeException("Failed : HTTP error code : "
                    + conn.getResponseCode());
        }
        
        StringBuffer stringBuffer = new StringBuffer();
        InputStream inputStream = conn.getInputStream();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));

        String line = null;

        while ((line = bufferedReader.readLine()) != null)
        {
            stringBuffer.append(line +"\r\n");
        }
        inputStream.close();
        conn.disconnect();
        return stringBuffer.toString();
		}
		catch (Exception e) 
		{
            e.printStackTrace();
            return null;
        }
	 }

}
