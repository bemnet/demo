<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto|Courgette|Pacifico:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="/css/main.css" rel="stylesheet">
</head>
<body>

<div class="signup-form">
    <form action="/login" method="post">
        <div class="form-header">
            <h2>Our Logo</h2>
            <p>Sign IN</p>
        </div>
        <div class="form-group">
            <label>Username</label>
            <input type="text" class="form-control" name="username" required="required">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password" required="required">
        </div>
        <div class="form-group">
            <label>${ERROR}</label>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block btn-lg">Sign In</button>
        </div>
    </form>
    <div class="text-center small"> <a href="/registration">Create an account</a></div>
</div>

</body>
</html>
