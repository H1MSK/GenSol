#ifndef __ERROR_H__
#define __ERROR_H__

enum class ERR {
	//options
	UNKNOWN_OPTION,
	MULTIPLE_OUTPUT_FILE_SET,
	//Analyse
	FILE_OPEN_FAILED,
	JSON_PARSE_FAILED,
	OBJECT_NAME_ILLEGAL,
	OBJECT_TYPE_UNSUPPORTED,
	MODULE_TYPE_UNDEFINED,
	MODULE_NAME_CONFLICT,
	MODULE_NOT_FOUND,
	MODULE_CYCLIC_DEPENDENCE_FOUND,

	SOURCE_DEPENDENCE_ANALYSIS_FAILED,

	MULTIPLE_DEFAULT_TASK_SET,
	SWITCH_EVALUATE_FAILED
};

void setError(ERR, const char *extraInfo = "", ...);

#endif