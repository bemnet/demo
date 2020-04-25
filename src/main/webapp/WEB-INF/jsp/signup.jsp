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
    <form action="/registration" method="post">
        <div class="form-header">
            <h2>Our Logo</h2>
            <p>Fill out this form to join our community!</p>
        </div>
        <div class="form-group">
            <label>Username</label>
            <input type="text" class="form-control" name="username" required="required">
        </div>
        <div class="form-group">
            <label>Email Address</label>
            <input type="email" class="form-control" name="email" required="required">
        </div>
        <div class="form-group">
            <label>Password</label>
            <input type="password" class="form-control" name="password" required="required">
        </div>
        <div class="form-group">
            <label>Confirm Password</label>
            <input type="password" class="form-control" name="confirmPassword" required="required">
        </div>
        <div class="form-group">
            <label>${ERROR}</label>
        </div>
        <div class="form-group">
            <label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block btn-lg">Sign Up</button>
        </div>
    </form>
    <div class="text-center small">Already have an account? <a href="/">Login here</a></div>
</div>
</body>
</html>
