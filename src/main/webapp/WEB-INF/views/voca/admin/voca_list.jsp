<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../includes/header.jsp" %>

                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="card shadow">
                        <div class="card-header">
                            <!-- Begin folder Select Option -->
                            <div class="row mb-4 pl-2 pr-2">
                                <label for="folder" class="form-label">폴더</label>
                                <select class="custom-select" name="" id="folder">
                                    <option value="">단어가 읽기다 기본편</option>
                                    <option value="">단어가 읽기다 실전편</option>
                                </select>
                            </div>

                            <!-- Begin Category Select Option -->
                            <div class="row mb-4 pl-2 pr-2">
                                <label for="category" class="form-label">카테고리</label>
                                <select class="custom-select" name="" id="category">
                                    <option value="">Unit 01 - 요리</option>
                                    <option value="">Unit 02 - 일상1</option>
                                    <option value="">Unit 03 - 일상2</option>
                                    <option value="">Unit 04 - 신체</option>
                                    <option value="">Unit 05 - 취미1</option>
                                </select>
                            </div>
                        </div>
                        <div class="card-body">
                            <form class="form-inline" action="" method="">
                                <select class="custom-select custom-select-sm mt-1" name="" id="">
                                    <option value="5">5</option>
                                    <option value="10" selected>10</option>
                                    <option value="15">15</option>
                                    <option value="20">20</option>
                                    <option value="25">25</option>
                                </select>

                                <label class="ml-2 form-label" for="">entries per page</label>
                            </form>

                            <!-- Begin Search Form -->
                            <div class="row mb-2 pl-2 pr-2 d-flex justify-content-end">
                                <form class="form-inline" action="" method="GET">
                                    <div class="input-group input-group-sm">
                                        <select class="custom-select custom-select-sm mr-1" name="" id="">
                                            <option value="">단어</option>
                                            <option value="">뜻</option>
                                        </select>
                                        <input class="form-control" type="text">

                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">
                                                <i class="fas fa-search"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <!-- Begin Table -->
                            <div class="table-responsive bg-white">
                                <table class="table table-sm table-hover">
                                    <caption class="mt-2">Showing 1 to 10 of 57 entries</caption>
                                    <thead>
                                        <tr>
                                            <th><input type="checkbox" id="all"><label class="form-label p-0 m-0 pl-2" for="all">ALL</label></th>
                                            <th>ID</th>
                                            <th>Word</th>
                                            <th>Meaning</th>
                                            <th class="text-center">Actions</th>
                                            <th class="text-center">State</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="word" items="${words }">
                                        	<tr>
	                                            <td><input type="checkbox"></td>
	                                            <td><c:out value="${word.wno }" /></td>
	                                            <td><c:out value="${word.word_name }" /></td>
	                                            <td><c:out value="${word.word_meaning }" /></td>
	                                            <td class="text-center">
	                                                <button class="btn text-dark p-0" type="button" data-toggle="modal" data-target="#modifyModal">
	                                                    <i class="fas fa-edit"></i>
	                                                </button>
	                                                <button class="btn text-dark p-0 ml-1" type="button" data-toggle="modal" data-target="#deleteModal">
	                                                    <i class="fas fa-trash-alt"></i>
	                                                </button>
	                                                
	                                            </td>
	                                            <td class="text-center"><span class="badge badge-pill badge-info"><c:out value="${word.state }" /></span></td>
                                        	</tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                            

                            <!-- Begin Modify Modal -->
                            <div class="modal fade" id="modifyModal" tabindex="-1" aria-hidden="true">
                                <form action="" method="POST">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">단어 수정</h5>
                                                <button type="button" class="close" data-dismiss="modal">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <label class="form-label" for="folder">폴더</label>
                                                <select class="custom-select" name="" id="folder">
                                                    <option value="">단어가 읽기다 기본편</option>
                                                    <option value="">단어가 읽기다 실전편</option>
                                                </select>

                                                <label class="form-label mt-2" for="category">카테고리</label>
                                                <select class="custom-select" name="" id="category">
                                                    <option value="">Unit 01 - 요리</option>
                                                    <option value="">Unit 02 - 일상1</option>
                                                    <option value="">Unit 03 - 일상2</option>
                                                    <option value="">Unit 04 - 신체</option>
                                                    <option value="">Unit 05 - 취미1</option>
                                                </select>
    
                                                <label class="form-label mt-2" for="">번호</label>
                                                <input class="form-control" type="text" disabled value="1" />
    
                                                <label class="form-label mt-2" for="">단어</label>
                                                <input class="form-control" type="text" placeholder="spice" />
    
                                                <label class="form-label mt-2" for="">뜻</label>
                                                <input class="form-control" type="text" placeholder="양념" />
                                                </form>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
                                                <button type="submit" class="btn btn-primary">수정하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <!-- Begin Delete Modal -->
                            <div class="modal fade" id="deleteModal" tabindex="-1" aria-hidden="true">
                                <form action="" method="POST">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title">단어 삭제</h5>
                                                <button type="button" class="close" data-dismiss="modal">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <label class="form-label" for="folder">폴더</label>
                                                <select class="custom-select" name="" id="folder" disabled>
                                                    <option value="">단어가 읽기다 기본편</option>
                                                </select>

                                                <label class="form-label mt-2" for="">카테고리</label>
                                                <select name="" id="" class="custom-select" disabled>
                                                    <option value="">단어가 읽기다 기본편 Unit 01 - 요리</option>
                                                </select>
    
                                                <label class="form-label mt-2" for="">번호</label>
                                                <input class="form-control" type="text" value="1" disabled />
    
                                                <label class="form-label mt-2" for="">단어</label>
                                                <input class="form-control" type="text" value="spice" disabled />
    
                                                <label class="form-label mt-2" for="">뜻</label>
                                                <input class="form-control" type="text" value="양념" disabled />
                                            </div>
    
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">취소하기</button>
                                                <button type="button" class="btn btn-primary">삭제하기</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>

                            </div>
                            
                            <!-- Begin Pagination -->
                            <div class="row mt-3">
                                <div class="col d-flex justify-content-center">
                                    <nav>
                                        <ul class="pagination">
                                            <li class="page-item">
                                                <a class="page-link" href="#">
                                                    <span>&laquo;</span>
                                                </a>
                                            </li>
                                            <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item"><a class="page-link" href="#">4</a></li>
                                            <li class="page-item"><a class="page-link" href="#">5</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#">
                                                    <span>&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col d-flex justify-content-end">
                                    <button type="button" class="btn btn-primary">추가하기</button>
                                    <button type="button" class="ml-2 btn btn-primary">선택된 아이템 삭제</button>
                                </div>
                            </div>

                            
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <%@include file="../includes/footer.jsp" %>