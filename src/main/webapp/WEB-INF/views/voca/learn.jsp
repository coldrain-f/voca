<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="includes/header.jsp" %>

<link rel="stylesheet" href="/resources/css/custom.css">

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="card shadow">
                        <div class="card-header">
                            <div class="row mb-4 pl-2 pr-2">
                                <label for="" class="form-label">폴더</label>
                                <select name="" id="" class="custom-select">
                                    <option value="">단어가 읽기다 기본편</option>
                                </select>
                            </div>
                            <div class="row mb-4 pl-2 pr-2">
                                <label for="" class="form-label">카테고리</label>
                                <select name="" id="" class="custom-select">
                                    <option value="">Unit 01 - 요리</option>
                                </select>
                            </div>
                            <div class="row mb-4 pl-2 pr-2 d-flex justify-content-end">
                                <button type="button" class="btn btn-info">학습 시작</button>
                            </div>
                            <hr>
                            <div class="row pl-2 pr-2 mt-1">
                                <h6 class="w-100 d-flex justify-content-center title mt-3">
                                    단어가 읽기다 기본편 Unit 01 - 요리
                                </h6>
                                <span class="w-100 d-flex justify-content-center state" style="font-size: 12px;">1/20</span>
                                <form action="" method="" class="form-inline d-flex justify-content-end w-100 mt-4">
                                    <div class="input-group">
                                        <select name="" id="speech-language" class="custom-select mr-1">
                                            <option value="en-US" selected>영어</option>
                                            <option value="ja-JP">일본어</option>
                                            <option value="ko-KR">한국어</option>
                                        </select>
                                        <input type="text" id="speech-word" class="form-control" autocomplete="off" />
                                        <div class="input-group-append">
                                            <button type="button" id="speech-button" class="btn btn-outline-secondary">발음듣기</button>
                                        </div>
                                        <!-- TTS Script -->
                                        <script src="/js/tts.js"></script>
                                    </div>
                                </form>
                            </div>
                            <!-- <h6 class="d-flex justify-content-center">단어가 읽기다 기본편 Unit 01 - 요리</h6> -->
                        </div>

                        <div class="card-body pt-5" style="height: 330px">
                            <div class="row d-flex justify-content-center mb-1 pt-5">
                                <form class="form-inline" action="" method="">
                                    <label class="form-label mr-2 mb-1" for="" style="font-size: 18px">양념</label>
                                    <div class="input-group">
                                        <input class="form-control input-answer" type="text" placeholder="스펠링을 입력해 주세요..." >
                                        <div class="input-group-append">
                                            <button type="button" class="btn btn-outline-secondary">확인</button>
                                            <button type="button" class="btn btn-outline-secondary">모르겠어요</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="row d-flex justify-content-center">
                                <form class="form-inline" action="" method="">
                                    <input class="form-control show-answer mt-2" type="text" size="48" placeholder="&ldquo;모르겠어요&rdquo;를 누르면 이곳에 뜻이 표시돼요!" disabled>
                                </form>
                            </div>

                            
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

<%@include file="includes/footer.jsp" %>