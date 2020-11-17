CLEARSCREEN.
CLEARVECDRAWS().
CLEARGUIS().

// Create a GUI window
LOCAL guiTO IS GUI(250).
LOCAL labelWarpTool IS guiTO:ADDLABEL("<size=20><b>WARP TOOL</b></size>").
SET labelWarpTool:STYLE:ALIGN TO "CENTER".
SET labelWarpTool:STYLE:HSTRETCH TO True. 

SET HoursPerDay TO KUniverse:HOURSPERDAY.  //6 or 24, depending on setting used on KSP main settings screen 
//Autopilot settings

LOCAL apsettings to guiTo:ADDVBOX().
//------------------------------------------------------------------------------------------------------------------------------
SET TGTWarpYears to 0.

LOCAL WarpYearssettings to apsettings:ADDHLAYOUT().

LOCAL ButtonWarpYears TO WarpYearssettings:ADDBUTTON("WARP YEARS").

SET ButtonWarpYears:Style:WIDTH TO 120.
SET ButtonWarpYears:Style:HEIGHT TO 25.

LOCAL ButtonWarpYearsMinus TO WarpYearssettings:ADDBUTTON("▼").
SET ButtonWarpYearsMinus:Style:WIDTH TO 40.
SET ButtonWarpYearsMinus:Style:HEIGHT TO 25.

LOCAL LabelWarpYears TO WarpYearssettings:ADDLABEL("").
SET LabelWarpYears:Style:HEIGHT TO 25.
SET LabelWarpYears:STYLE:ALIGN TO "CENTER".

LOCAL ButtonWarpYearsPlus TO WarpYearssettings:ADDBUTTON("▲").
SET ButtonWarpYearsPlus:Style:WIDTH TO 40.
SET ButtonWarpYearsPlus:Style:HEIGHT TO 25.

SET ButtonWarpYearsMinus:ONCLICK  TO { if TGTWarpYears > 0 {SET TGTWarpYears TO ROUND(TGTWarpYears) -1.} SET LabelWarpYears:TEXT TO  "<b>" + TGTWarpYears + "</b>".}.
SET ButtonWarpYearsPlus:ONCLICK  TO { SET TGTWarpYears TO ROUND(TGTWarpYears) +1 . SET LabelWarpYears:TEXT TO  "<b>" + TGTWarpYears + "</b>".}.
SET ButtonWarpYears:ONCLICK  TO { set kuniverse:timewarp:rate to 100000. WARPTO(time:seconds + TGTWarpYears*426.08*HoursPerDay*60*60). SET TGTWarpYears TO 0. SET LabelWarpYears:TEXT TO  "<b>" + TGTWarpYears + "</b>".}.


SET LabelWarpYears:TEXT TO "". 
SET LabelWarpYears:TEXT TO  "<b>" + TGTWarpYears + "</b>".

//------------------------------------------------------------------------------------------------------------------------------
SET TGTWarpDays to 0.

LOCAL WarpDayssettings to apsettings:ADDHLAYOUT().

LOCAL ButtonWarpDays TO WarpDayssettings:ADDBUTTON("WARP DAYS").

SET ButtonWarpDays:Style:WIDTH TO 120.
SET ButtonWarpDays:Style:HEIGHT TO 25.

LOCAL ButtonWarpDaysMinus TO WarpDayssettings:ADDBUTTON("▼").
SET ButtonWarpDaysMinus:Style:WIDTH TO 40.
SET ButtonWarpDaysMinus:Style:HEIGHT TO 25.

LOCAL LabelWarpDays TO WarpDayssettings:ADDLABEL("").
SET LabelWarpDays:Style:HEIGHT TO 25.
SET LabelWarpDays:STYLE:ALIGN TO "CENTER".

LOCAL ButtonWarpDaysPlus TO WarpDayssettings:ADDBUTTON("▲").
SET ButtonWarpDaysPlus:Style:WIDTH TO 40.
SET ButtonWarpDaysPlus:Style:HEIGHT TO 25.

SET ButtonWarpDaysMinus:ONCLICK  TO { if TGTWarpDays > 0 {SET TGTWarpDays TO ROUND(TGTWarpDays) -1.} SET LabelWarpDays:TEXT TO  "<b>" + TGTWarpDays + "</b>".}.
SET ButtonWarpDaysPlus:ONCLICK  TO { SET TGTWarpDays TO ROUND(TGTWarpDays) +1 . SET LabelWarpDays:TEXT TO  "<b>" + TGTWarpDays + "</b>".}.
SET ButtonWarpDays:ONCLICK  TO { WARPTO(time:seconds + TGTWarpDays*HoursPerDay*60*60). SET TGTWarpDays TO 0. SET LabelWarpDays:TEXT TO  "<b>" + TGTWarpDays + "</b>".}.


SET LabelWarpDays:TEXT TO "". 
SET LabelWarpDays:TEXT TO  "<b>" + TGTWarpDays + "</b>".

//------------------------------------------------------------------------------------------------------------------------------
SET TGTWarpHours to 0.

LOCAL WarpHourssettings to apsettings:ADDHLAYOUT().

LOCAL ButtonWarpHours TO WarpHourssettings:ADDBUTTON("WARP HOURS").

SET ButtonWarpHours:Style:WIDTH TO 120.
SET ButtonWarpHours:Style:HEIGHT TO 25.

LOCAL ButtonWarpHoursMinus TO WarpHourssettings:ADDBUTTON("▼").
SET ButtonWarpHoursMinus:Style:WIDTH TO 40.
SET ButtonWarpHoursMinus:Style:HEIGHT TO 25.

LOCAL LabelWarpHours TO WarpHourssettings:ADDLABEL("").
SET LabelWarpHours:Style:HEIGHT TO 25.
SET LabelWarpHours:STYLE:ALIGN TO "CENTER".

LOCAL ButtonWarpHoursPlus TO WarpHourssettings:ADDBUTTON("▲").
SET ButtonWarpHoursPlus:Style:WIDTH TO 40.
SET ButtonWarpHoursPlus:Style:HEIGHT TO 25.

SET ButtonWarpHoursMinus:ONCLICK  TO { if TGTWarpHours > 0 {SET TGTWarpHours TO ROUND(TGTWarpHours) -1.} SET LabelWarpHours:TEXT TO  "<b>" + TGTWarpHours + "</b>".}.
SET ButtonWarpHoursPlus:ONCLICK  TO { SET TGTWarpHours TO ROUND(TGTWarpHours) +1 . SET LabelWarpHours:TEXT TO  "<b>" + TGTWarpHours + "</b>".}.
SET ButtonWarpHours:ONCLICK  TO { WARPTO(time:seconds + TGTWarpHours*60*60). SET TGTWarpHours TO 0. SET LabelWarpHours:TEXT TO  "<b>" + TGTWarpHours + "</b>".}.


SET LabelWarpHours:TEXT TO "". 
SET LabelWarpHours:TEXT TO  "<b>" + TGTWarpHours + "</b>".

//------------------------------------------------------------------------------------------------------------------------------
SET TGTWarpMins to 0.
LOCAL WarpMinssettings to apsettings:ADDHLAYOUT().

LOCAL ButtonWarpMins TO WarpMinssettings:ADDBUTTON("WARP MINUTES").

SET ButtonWarpMins:Style:WIDTH TO 120.
SET ButtonWarpMins:Style:HEIGHT TO 25.

LOCAL ButtonWarpMinsMinus TO WarpMinssettings:ADDBUTTON("▼").
SET ButtonWarpMinsMinus:Style:WIDTH TO 40.
SET ButtonWarpMinsMinus:Style:HEIGHT TO 25.

LOCAL LabelWarpMins TO WarpMinssettings:ADDLABEL("").
SET LabelWarpMins:Style:HEIGHT TO 25.
SET LabelWarpMins:STYLE:ALIGN TO "CENTER".

LOCAL ButtonWarpMinsPlus TO WarpMinssettings:ADDBUTTON("▲").
SET ButtonWarpMinsPlus:Style:WIDTH TO 40.
SET ButtonWarpMinsPlus:Style:HEIGHT TO 25.


SET ButtonWarpMinsMinus:ONCLICK TO { if TGTWarpMins > 0 {SET TGTWarpMins TO ROUND(TGTWarpMins) -1.} SET LabelWarpMins:TEXT TO  "<b>" + TGTWarpMins + "</b>".}.
SET ButtonWarpMinsPlus:ONCLICK TO { SET TGTWarpMins TO ROUND(TGTWarpMins) +1. SET LabelWarpMins:TEXT TO  "<b>" + TGTWarpMins + "</b>".}.
SET ButtonWarpMins:ONCLICK  TO { WARPTO(time:seconds + TGTWarpMins*60). SET TGTWarpMins TO 0. SET LabelWarpMins:TEXT TO  "<b>" + TGTWarpMins + "</b>".}.


SET LabelWarpMins:TEXT TO "". 
SET LabelWarpMins:TEXT TO  "<b>" + TGTWarpMins + "</b>".

//------------------------------------------------------------------------------------------------------------------------------
SET TGTWarpSecs to 0.
LOCAL WarpSecssettings to apsettings:ADDHLAYOUT().

LOCAL ButtonWarpSecs TO WarpSecssettings:ADDBUTTON("WARP SECONDS").

SET ButtonWarpSecs:Style:WIDTH TO 120.
SET ButtonWarpSecs:Style:HEIGHT TO 25.

LOCAL ButtonWarpSecsMinus TO WarpSecssettings:ADDBUTTON("▼").
SET ButtonWarpSecsMinus:Style:WIDTH TO 40.
SET ButtonWarpSecsMinus:Style:HEIGHT TO 25.

LOCAL LabelWarpSecs TO WarpSecssettings:ADDLABEL("").
SET LabelWarpSecs:Style:HEIGHT TO 25.
SET LabelWarpSecs:STYLE:ALIGN TO "CENTER".

LOCAL ButtonWarpSecsPlus TO WarpSecssettings:ADDBUTTON("▲").
SET ButtonWarpSecsPlus:Style:WIDTH TO 40.
SET ButtonWarpSecsPlus:Style:HEIGHT TO 25.


SET ButtonWarpSecsMinus:ONCLICK TO { if TGTWarpSecs > 0 {SET TGTWarpSecs TO ROUND(TGTWarpSecs) -1.} SET LabelWarpSecs:TEXT TO  "<b>" + TGTWarpSecs + "</b>".}.
SET ButtonWarpSecsPlus:ONCLICK TO { SET TGTWarpSecs TO ROUND(TGTWarpSecs) +1. SET LabelWarpSecs:TEXT TO  "<b>" + TGTWarpSecs + "</b>".}.
SET ButtonWarpSecs:ONCLICK  TO { WARPTO(time:seconds + TGTWarpSecs). SET TGTWarpSecs TO 0. SET LabelWarpSecs:TEXT TO  "<b>" + TGTWarpSecs + "</b>".}.


SET LabelWarpSecs:TEXT TO "". 
SET LabelWarpSecs:TEXT TO  "<b>" + TGTWarpSecs + "</b>".

//------------------------------------------------------------------------------------------------------------------------------
LOCAL autoTOGo TO guiTO:ADDBUTTON("Go").
LOCAL autoTOStop  TO guiTO:ADDBUTTON("Stop").
LOCAL autoTOClear  TO guiTO:ADDBUTTON("Clear").
LOCAL autoTOClose  TO guiTO:ADDBUTTON("Close").
guiTO:SHOW().
set atdone to false.
SET autoTOGo:ONCLICK TO {WARPTO(time:seconds + TGTWarpYears*426.08*HoursPerDay*60*60+TGTWarpDays*HoursPerDay*60*60+TGTWarpHours*60*60+
								TGTWarpMins*60+TGTWarpSecs). SET TGTWarpYears to 0. SET TGTWarpDays to 0. SET TGTWarpHours to 0. SET TGTWarpMins to 0. SET TGTWarpSecs to 0.
							 SET LabelWarpYears:TEXT TO  "<b>" + TGTWarpYears + "</b>". SET LabelWarpDays:TEXT TO  "<b>" + TGTWarpDays + "</b>".
							 SET LabelWarpHours:TEXT TO  "<b>" + TGTWarpHours + "</b>". SET LabelWarpMins:TEXT TO  "<b>" + TGTWarpMins + "</b>".
							 SET LabelWarpSecs:TEXT TO  "<b>" + TGTWarpSecs + "</b>".}.
SET autoTOStop:ONCLICK TO  { kuniverse:timewarp:CANCELWARP().}.							 
SET autoTOClear:ONCLICK TO { SET TGTWarpYears to 0. SET TGTWarpDays to 0. SET TGTWarpHours to 0. SET TGTWarpMins to 0. SET TGTWarpSecs to 0.
							 SET LabelWarpYears:TEXT TO  "<b>" + TGTWarpYears + "</b>". SET LabelWarpDays:TEXT TO  "<b>" + TGTWarpDays + "</b>".
							 SET LabelWarpHours:TEXT TO  "<b>" + TGTWarpHours + "</b>". SET LabelWarpMins:TEXT TO  "<b>" + TGTWarpMins + "</b>".
							 SET LabelWarpSecs:TEXT TO  "<b>" + TGTWarpSecs + "</b>".}.
SET autoTOClose:ONCLICK TO { guiTO:hide. set atdone to true. }.
wait until atdone.
//-------------------------------------------------------------------------------------