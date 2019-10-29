<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <!-- <link rel="stylesheet" href="../css/bootstrap.css">
    <script type="text/javascript" href="../js/bootstrap.js"></script> -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        /* .btn{
            background: black;
        } */

        #formwrap{
            border:1px solid lightgray;
            border-radius:10px;
            width:30%;
            margin:auto;
            padding:3%;

        }


    </style>

    <title>Bootstrap</title>
</head>

<body>
    <h1>부트스트랩(Bootstrap)</h1>
    <p>
        트위터 에서 개발한 UI 라이브러리로 웹 사이트 디자인 개발 시간을 줄이며 반응형 웹 사이트 개발을 위해 만들어짐
    </p>

    <a href="http://www.getbootstrap.com">부트스트랩 공식 사이트</a>


    <hr>

    <h2>bootstrap 맛보기</h2>
    <br><br>

    <h3>Bootstrap 버튼</h3>

    <button>일반버튼</button>
    <button class="btn">bootstrap버튼</button>
    <br><br>

    <button type="button" class="btn btn-primary">Primary</button>
    <button type="button" class="btn btn-secondary">Secondary</button>
    <button type="button" class="btn btn-success">Success</button>
    <button type="button" class="btn btn-danger">Danger</button>
    <button type="button" class="btn btn-warning">Warning</button>
    <button type="button" class="btn btn-info">Info</button>
    <button type="button" class="btn btn-light">Light</button>
    <button type="button" class="btn btn-dark">Dark</button>

    <button type="button" class="btn btn-link">Link</button>
    <br><br>



    <button type="button" class="btn btn-outline-primary">Primary</button>
    <button type="button" class="btn btn-outline-secondary">Secondary</button>
    <button type="button" class="btn btn-outline-success">Success</button>
    <button type="button" class="btn btn-outline-danger">Danger</button>
    <button type="button" class="btn btn-outline-warning">Warning</button>
    <button type="button" class="btn btn-outline-info">Info</button>
    <button type="button" class="btn btn-outline-light">Light</button>
    <button type="button" class="btn btn-outline-dark">Dark</button>
    <br><br>



    <button type="button" class="btn btn-outline-primary btn-lg">Primary</button>
    <button type="button" class="btn btn-outline-secondary btn-lg">Secondary</button>
    <button type="button" class="btn btn-outline-success btn-lg">Success</button>
    <button type="button" class="btn btn-outline-danger btn-lg">Danger</button>
    <button type="button" class="btn btn-outline-warning btn-lg">Warning</button>
    <button type="button" class="btn btn-outline-info btn-lg">Info</button>
    <button type="button" class="btn btn-outline-light btn-lg">Light</button>
    <button type="button" class="btn btn-outline-dark btn-lg">Dark</button>


    <hr>


    <h3>Bootstrap Table</h3>
    <br><br>

    <!-- <table class="table table-striped table-dark"> -->
    <!-- <table class="table table-hover"> -->
    <table class="table table-bordered">
        <tr>
            <th>글번호</th>
            <th>글제목</th>
            <th>작성자</th>
            <th>조회수</th>
            <th>작성일자</th>
        </tr>
        <tr>
            <td>2001</td>
            <td>공지입니다</td>
            <td>관리자</td>
            <td>200</td>
            <td>2019-09-18</td>
        </tr>
        <tr>
            <td>2000</td>
            <td>이번주 금요일 시험</td>
            <td>우별림</td>
            <td>21</td>
            <td>2019-09-17</td>
        </tr>
        <tr>
            <td>1999</td>
            <td>세미프로젝트</td>
            <td>우별림</td>
            <td>0</td>
            <td>2019-09-17</td>
        </tr>
    </table>

    <div>
        <ul class="pagination justify-content-center">
            <li><a href="#" class="page-link">1</a></li>
            <li><a href="#" class="page-link">2</a></li>
            <li><a href="#" class="page-link">3</a></li>
            <li><a href="#" class="page-link">4</a></li>
            <li><a href="#" class="page-link">5</a></li>
        </ul>
    </div>


    <hr>

    <h3>Bootstrap Forms</h3>
    <br><br>

    <div id="formwrap">
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>



    <br><br>
    <hr>

    <h3>Bootstrap Modal</h3>

    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>



    <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                  <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Dropdown
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </li>
                <li class="nav-item">
                  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
              </form>
            </div>
          </nav>
















    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>