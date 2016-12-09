<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
</head>
<body>
    Lorem ipsum dolor sit.
</body>
<script>
//金额格式化
function formatCurrency(num) {
			num = num.toString().replace(/\$|\,/g, '');
			if (isNaN(num))
				num = "0";
			sign = (num == (num = Math.abs(num)));
			num = Math.floor(num * 100 + 0.50000000001);
			cents = num % 100;
			num = Math.floor(num / 100).toString();
			if (cents < 10)
				cents = "0" + cents;
			for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
				num = num.substring(0, num.length - (4 * i + 3)) + ',' + num.substring(num.length - (4 * i + 3));
			return (((sign) ? '' : '-') + num + '.' + cents);
}

console.info(formatCurrency(-500000));

</script>


</html>