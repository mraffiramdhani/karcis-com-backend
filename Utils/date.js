const dateRange = (start, end) => {
	const StartDate = new Date(start);
	const EndDate = new Date(end);

	const Diff_In_Time = StartDate.getTime() - EndDate.getTime();
	const Diff_In_Days = Diff_In_Time / (1000 * 3600 * 24);

	return Diff_In_Days;
};

const convertDate = (strDate) => {
	const dt = new Date(strDate);

	return `${
    (dt.getMonth()+1).toString().padStart(2, '0')}/${
    dt.getDate().toString().padStart(2, '0')}/${
    dt.getFullYear().toString().padStart(4, '0')} ${
    dt.getHours().toString().padStart(2, '0')}:${
    dt.getMinutes().toString().padStart(2, '0')}:${
    dt.getSeconds().toString().padStart(2, '0')}`
}

module.exports = {
	dateRange,
	convertDate
};
