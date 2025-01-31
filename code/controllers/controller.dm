/datum/controller
	var/name

/datum/controller/proc/Initialize()

//cleanup actions
/datum/controller/proc/Shutdown()

//when we enter dmm_suite.load_map
/datum/controller/proc/StartLoadingMap()

//when we exit dmm_suite.load_map
/datum/controller/proc/StopLoadingMap()

/datum/controller/proc/Recover()

/datum/controller/proc/stat_entry(msg)
	SHOULD_CALL_PARENT(TRUE)
	SHOULD_NOT_SLEEP(TRUE)
	return msg

/**
 * Standardized method for tracking startup times.
 */
/datum/controller/proc/log_startup_progress(message)
	Master.last_init_info = "([name]): [message]"
	to_chat(world, "<span class='danger'><small>\[[name]]</small> [message]</span>", MESSAGE_TYPE_DEBUG, confidential = TRUE)
	log_world("\[[name]] [message]")
