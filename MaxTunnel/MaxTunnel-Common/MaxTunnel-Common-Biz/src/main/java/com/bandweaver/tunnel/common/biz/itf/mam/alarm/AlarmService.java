package com.bandweaver.tunnel.common.biz.itf.mam.alarm;

import java.util.Date;
import java.util.List;

import com.bandweaver.tunnel.common.biz.dto.mam.alarm.AlarmDto;
import com.bandweaver.tunnel.common.biz.pojo.mam.alarm.Alarm;
import com.bandweaver.tunnel.common.biz.vo.mam.alarm.AlarmVo;
import com.github.pagehelper.PageInfo;

public interface AlarmService {

	void add(Alarm alarm);

	/**根据管廊id和告警等级查询统计 
	 * @param tunnelId 管廊id
	 * @param level 等级id
	 * @return   
	 * @author shaosen
	 * @Date 2018年8月14日
	 */
	int getCountByTunnelAndLevel(Integer tunnelId, int level);

	/**批量添加 
	 * @param list   
	 * @author shaosen
	 * @Date 2018年8月14日
	 */
	void addBatch(List<Alarm> list);

	/**分页查询 
	 * @param vo
	 * @return   
	 * @author shaosen
	 * @Date 2018年8月14日
	 */
	PageInfo<AlarmDto> dataGrid(AlarmVo vo);

	/**查询所有未清除的告警 
	 * @return   
	 * @author shaosen
	 * @Date 2018年10月16日
	 */
	List<AlarmDto> getAllNonCleanedAlarm();

	Alarm getById(Integer id);

	void cleanAlarm(Alarm alarm);

	List<AlarmDto> getByCondition(AlarmVo vo);

	int getCountByObjectIds(List<Integer> objectIdList, Date startTime, Date endTime);

	List<AlarmDto> startPage(int start, int end, List<Integer> objectIdList,Date startTime, Date endTime);

	int getCountByLevel(int level);

	void cleanAlarmBatch(AlarmVo vo);

	int getCountByTunnel(Integer id);
<<<<<<< HEAD

	List<Alarm> getListFromYear(Date beginDayOfYear);

	int getCountByTime(Date date);

	List<Alarm> getAllList();

=======
>>>>>>> bf512039ff8442b3d1853c03de35f9d29734072e

	List<Alarm> getListFromYear(Date beginDayOfYear);

	int getCountByTime(Date date);

	List<Alarm> getAllList();

	List<AlarmDto> getListByStartTimeAndEndTime(Date startTime,Date endTime);
}
