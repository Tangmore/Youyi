function formatNumber(n) {
  n = n.toString()
  return n[1] ? n : '0' + n  
}

// 日期转换
function getNowFormatDate() {
        var date = new Date();
        var year = date.getFullYear(),
            month = date.getMonth() + 1,
            strDate = date.getDate(),
            hour = date.getHours(),
            minute = date.getMinutes(),
            second = date.getSeconds();  

        month= month<=9?('0'+month):month;
        strDate= strDate<=9?('0'+strDate):strDate;
        var currentdate = [year, month,strDate].map(formatNumber).join('-');
        var formatTime=[hour, minute, second].map(formatNumber).join(':')
        return [currentdate,formatTime];
    }

module.exports = {
  getNowFormatDate:getNowFormatDate
}
