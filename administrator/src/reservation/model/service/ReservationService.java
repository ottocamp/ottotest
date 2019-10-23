package reservation.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import static common.JDBCTemplate.*;

import reservation.model.dao.ReservationDao;
import reservation.model.vo.Reservation;

public class ReservationService {

	public ArrayList<Reservation> SelectList() {
		Connection conn = getConnection();
		
		ArrayList<Reservation> rList = new ReservationDao().SelectList(conn);
		
		close(conn);
		
		return rList;
	}

	public int deleteReservation(int reNo) {
		Connection conn = getConnection();

		int result = new ReservationDao().deleteReservation(conn, reNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
				
		return result;
	}

}
