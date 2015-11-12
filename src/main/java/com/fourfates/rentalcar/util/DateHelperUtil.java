package com.fourfates.rentalcar.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.stereotype.Service;

@Service
public class DateHelperUtil {
	
	private static final String FORMAT = "dd/MM/yyyy";
	
	public String convertCalendarToStringFormat(Calendar calendar) {
		SimpleDateFormat sdf = new SimpleDateFormat(FORMAT);
		return sdf.format(calendar.getTime());
	}
}
