const dateRange = (start, end) => {
	const StartDate = new Date(start);
	const EndDate = new new Date(end);

	const Diff_In_Time = StartDate.getTime() - EndDate.getTime();
	const Diff_In_Days = Diff_In_Time / (1000 * 3600 * 24);

	return Diff_In_Days;
};

module.exports = {
	dateRange
};
