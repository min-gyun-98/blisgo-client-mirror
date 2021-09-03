<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>게시글 - BlisGO</title>
    <meta name="theme-color" content="#ffffff">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="twitter:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <meta name="twitter:description" content="분리배출 도우미">
    <meta name="twitter:title" content="BlisGO">
    <meta property="og:type" content="website">
    <meta name="description" content="분리배출 도우미">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <link rel="apple-touch-icon" type="image/png" sizes="180x180" href="assets/img/favicon/favicon180x180.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon/favicon16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon/favicon32x32.png">
    <link rel="icon" type="image/png" sizes="180x180" href="assets/img/favicon/favicon180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="assets/img/favicon/favicon192x192.png">
    <link rel="icon" type="image/png" sizes="512x512" href="assets/img/favicon/favicon512x512.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.0/dist/united/bootstrap.min.css">
    <link rel="manifest" href="manifest.json">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;700&amp;display=swap">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/table-scrollable-layout.css">
<link rel="manifest" href="/manifest.json">
</head>

<body>
    <header id="header">
        <div id="nav-white-space"></div>
        <div class="container-fluid text-white d-none d-lg-block" id="highlight">
            <div class="row">
                <div class="col text-center">
                    <h1>커뮤니티<br></h1>
                </div>
            </div>
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    </header>
    <main id="main" class="pt-2 pb-2">
        <section>
            <div class="container p-0" id="community-content">
                <article>
                    <div class="card shadow-sm">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-auto flex-fill p-0">
                                    <ul class="list-group list-group-horizontal flex-fill">
                                        <li class="list-group-item flex-fill"><span>${articles.getBd_title()}</span></li>
                                        <li class="list-group-item"><span>${articles.getBd_writer()}</span></li>
                                    </ul>
                                </div>
                                <div class="col-auto flex-fill p-0">
                                    <ul class="list-group list-group-horizontal">
                                        <li class="list-group-item flex-fill"><i class="far fa-clock"></i><span>${articles.getBd_date()}</span></li>
                                        <li class="list-group-item flex-fill"><i class="far fa-eye"></i><span>${articles.getBd_views()}</span></li>
                                        <li class="list-group-item flex-fill"><i class="fas fa-heart text-danger"></i><span>${articles.getBd_favorite()}</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <p class="card-text">
                                ${articles.getBd_content()}

                            </p>
                            <%--지금 이 태그는 paragraph 입니다. write페이지는 rich text editor중 TinyMCE 에디터 API를 이용한 것입니다. 이점 유의하세요~--%>
                        </div>
                        <div class="card-footer p-1">
                            <div class="col">
                                <div class="btn-group float-end" role="group"><button class="btn btn-info" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-pencil-alt text-white"></i></button><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                            </div>
                        </div>
                        <div class="card-body pt-2 p-1">
                            <div class="input-group"><input class="form-control" type="text" placeholder="댓글을 입력하세요"><button class="btn btn-success float-end btn-success" type="submit"><i class="fas fa-paper-plane"></i></button></div>
                        </div>
                        <div class="card-body pt-2 p-1 pb-0">
                            <div class="table-responsive">
                                <table class="table table-fixed">
                                    <tbody>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">화</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-1" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">이</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-2" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">자</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-3" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">말</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-4" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">고</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-5" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">모</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-6" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">더</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-7" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">나</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td class="p-0">
                                                <div class="bg-light bg-gradient shadow-sm"><button class="btn btn-link w-100 text-decoration-none text-secondary" type="button" onclick="location.href=&#39;#&#39;"><span>더보기</span><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-chevron-down">
                                                            <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"></path>
                                                        </svg></button></div>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
        </section>
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/load-more.js"></script>
    <script src="assets/js/service-worker.js"></script>
</body>

</html>