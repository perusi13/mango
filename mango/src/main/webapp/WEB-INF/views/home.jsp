<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto+Slab:400,700,300,100">
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,400italic,300italic,300,500,500italic,700,900">

      	<section id="pageloader">
            <div class="loader-item fa fa-spin colored-border"></div>
    	</section>
       

        <div class="swiper-container">
            <div class="swiper-wrapper">

                <div class="swiper-slide" style="background-image: url(images/slide1.jpg);">
                    <div class="overlay-s"></div>
                    <div class="slider-caption">
                        <div class="inner-content">
                            <h2>Earth New House Project</h2>
                            <p>Artcore is free HTML5 template by <b class="blue">template</b><b class="green">mo</b>. Credit goes to <a rel="nofollow" href="http://unsplash.com">Unsplash</a> for photos.</p>
                            <a href="#" class="main-btn white">View Projects</a>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide" style="background-image: url(images/slide2.jpg);">
                    <div class="overlay-s"></div>
                    <div class="slider-caption">
                        <div class="inner-content">
                            <h2>Hotel and Residence Concept in Montenegro</h2>
                            <p>We come with new fresh and unique ideas.</p>
                            <a href="#" class="main-btn white">View Projects</a>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide" style="background-image: url(images/slide3.jpg);">
                    <div class="overlay-s"></div>
                    <div class="slider-caption">
                        <div class="inner-content">
                            <h2>Natural 3d Architecture Design</h2>
                            <p>Natural concrete is a material which is calm and clean.</p>
                            <a href="#" class="main-btn white">View Projects</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
       <script type="text/javascript">
            $(window).load(function() {
                $('.loader-item').fadeOut();
                    $('#pageloader').delay(350).fadeOut('slow');
                $('body').delay(350).css({'overflow-y':'visible'});
            })
        </script>