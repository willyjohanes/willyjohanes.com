@extends('layouts.main')

@section('container')
    
    <!-- header start -->
    <div class="section" id="header">
        <img class="pasfoto" src="assets/images/pasfoto2022.png">
        <p>Willy Johanes</p>
    </div>
    <!-- header end -->

    <!-- About Me section start -->
    <div class="section">
        <h1><span>Tentang Saya</span></h1>
        <p>
            Hey! I'm <strong>Willy</strong>. Learning theology was one of the best decisions I've ever made. I'm
            interested in biblical
            theology and systematic theology. I'm passionate about preaching and teaching people to <i>study the
                Bible</i> and
            have the <i>right perspective</i> on the Christian faith.
        </p>
        <p class="quote"><i>"Faith without works is dead."</i></p>
    </div>
    <!-- About Me Section end -->

    <!-- My Schedule section start -->
    <div class="section">
        <h1><span>Agenda Saya</span></h1>
        <table>
            <tr>
                <th>Time/Day</th>
                <th>Mon</th>
                <th>Tue</th>
                <th>Wed</th>
                <th>Thu</th>
                <th>Fri</th>
            </tr>
            <tr>
                <td>4pm - 5pm</td>
                <td class="selected">Biblical</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>5pm - 6pm</td>
                <td></td>
                <td class="selected">Systematic</td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>8pm - 9pm</td>
                <td></td>
                <td></td>
                <td class="selected">Historical</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>9pm - 10pm</td>
                <td></td>
                <td></td>
                <td></td>
                <td class="selected">Practical</td>
                <td></td>
            </tr>
            <tr>
                <td>10pm - 11pm</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td class="selected">Reflection</td>
            </tr>
        </table>
    </div>
    <!-- My Schedule section end -->

    <!-- my Skills section start -->
    <div class="section">
        <h1><span>Keahlian Saya</span></h1>
        <ul>
            <li class="li">Public Speaking<br />
                <progress min="0" max="100" value="95"></progress>
            </li>
            <li class="li">Berkhotbah<br />
                <progress min="0" max="100" value="90"></progress>
            </li>
            <li class="li">Mengajar<br />
                <progress min="0" max="100" value="90"></progress>
            </li>
            <li class="li">Teologi Biblika<br />
                <progress min="0" max="100" value="70"></progress>
            </li>
            <li class="li">Teologi Sistematika<br />
                <progress min="0" max="100" value="70"></progress>
            </li>
            <li class="li">Pelayanan Musik<br />
                <progress min="0" max="100" value="80"></progress>
            </li>
            <li class="li">Pelayanan Digital<br />
                <progress min="0" max="100" value="50"></progress>
            </li>
        </ul>
    </div>
    <!-- My Skills section end -->

    <!-- Media section start -->
    <!-- <div class="section">
        <h1><span>Media saya</span></h1>
        <iframe height="315" width="420" src="https://www.youtube.com/embed/RBG9AP4_uRo" allowfullscreen
            frameborder="0"></iframe>
    </div> -->
    <!-- Media section end -->

    <!-- Form section start -->
    <div class="section">
        <h1><span>Hubungi Saya</span></h1>

        <svg class="face" width="100" height="100">
            <circle cx="50" cy="50" r="50" fill="#FDD835" />
            <circle cx="30" cy="30" r="10" fill="#FFFFFF" />
            <circle cx="70" cy="30" r="10" fill="#FFFFFF" />
            <circle cx="30" cy="30" r="5" fill="#000000" />
            <circle cx="70" cy="30" r="5" fill="#000000" />
            <path d="M 30 70 q 20 20 40 0" stroke="#FFFFFF" stroke-width="5" fill="none" />
        </svg>


        <form action="" method="post">
            <input name="name" placeholder="Name" type="text" required /><br />
            <input name="email" placeholder="Email" type="text" required /><br />
            <input name="phone" placeholder="Phone Number" type="number" required /><br />
            <textarea name="message" placeholder="Message" required></textarea><br />
            <button class="submit" name="submit" type="submit">Submit</button>
        </form>

    </div>
    <!-- Form section end -->

    <!-- Contacts section start -->
    <div class="section">
        <h1><span>Follow Saya</span></h1>
        <div class="sosmed">
            <a href="https://biblestudy.asia" target="_blank"><img src="assets/images/web.png" width="30px"
                    height="30px" /></a>
            <a href="https://wa.me/+6285360395475" target="_blank"><img src="assets/images/whatsapp.png" width="30px"
                    height="30px" /></a>
            <a href="https://www.instagram.com/jauw._willy/" target="_blank"><img src="assets/images/instagram.png"
                    width="30px" height="30px" /></a>
            <a href="mailto:willyjohanesoffice@gmail.com"><img src="assets/images/email.png" width="30px"
                    height="30px" /></a>
            <!-- <a href="#"><img src="../assets/images/youtube.png" width="30px" height="30px" /></a> -->
        </div>
    </div>
    <!-- Contacts section end -->

    <div class="copyright">
        &copy; 2022 My Blog. All rights reserved.
    </div>



@endsection