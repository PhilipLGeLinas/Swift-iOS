//
//  SecondViewController.swift
//  iQuest
//
//  Created by Philip GeLinas on 7/13/19.
//  Copyright © 2019 Philip GeLinas Inc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIScrollViewDelegate {
    
    // Header variables
    @IBOutlet weak var header: UILabel!
    var counter = 0
    var currentTag = 50
    let max = 50
    
    // Arrays of links
    let airbnbLinks = [        "https://www.airbnb.com/s/Alabama--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aedd6e2f5-b6c2-4478-8ff4-eca648e89fd0%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJdf5LHzR_hogR6czIUzU0VV4&search_type=autocomplete_click&s_tag=S1UFiK7g",        "https://www.airbnb.com/s/Arizona--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aedd6e2f5-b6c2-4478-8ff4-eca648e89fd0%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=7&search_by_map=true&sw_lat=30.929689538278094&sw_lng=-114.8979089375&ne_lat=36.74692990115882&ne_lng=-108.3061120625",   "https://www.airbnb.com/s/Alaska--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aedd6e2f5-b6c2-4478-8ff4-eca648e89fd0%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJG8CuwJzfAFQRNduKqSde27w&search_type=autocomplete_click&s_tag=Gr-LWmHL",     "https://www.airbnb.com/s/Arkansas--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&title_type=NONE&place_id=ChIJYSc_dD-e0ocR0NLf_z5pBaQ&s_tag=ySzkg4qW",    "https://www.airbnb.com/s/California--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=6&search_by_map=true&sw_lat=30.602999183683096&sw_lng=-126.20539687500002&ne_lat=41.87207433080529&ne_lng=-113.02180312500002",   "https://www.airbnb.com/s/Colorado--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJt1YYm3QUQIcR_6eQSTGDVMc&search_type=autocomplete_click&s_tag=08qfhQBA",        "https://www.airbnb.com/s/Connecticut--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJpVER8hFT5okR5XBhBVttmq4&search_type=autocomplete_click&s_tag=uSwKLJ8c",        "https://www.airbnb.com/s/Delaware--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=8&search_by_map=true&sw_lat=37.75310252764727&sw_lng=-76.95255921875003&ne_lat=40.471792053072484&ne_lng=-73.65666078125003&place_id=ChIJO9YMTXYFx4kReOgEjBItHZQ&s_tag=L9ikLgoz",        "https://www.airbnb.com/s/Florida--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=6&search_by_map=true&sw_lat=21.770501862010256&sw_lng=-90.24933687499998&ne_lat=34.11706472710341&ne_lng=-77.06574312499998",        "https://www.airbnb.com/s/Georgia--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=7&search_by_map=true&sw_lat=30.51253877552454&sw_lng=-86.54068843749997&ne_lat=36.35712186699281&ne_lng=-79.94889156249997&place_id=ChIJV4FfHcU28YgR5xBP7BC8hGY&s_tag=Gfh2gZWs",        "https://www.airbnb.com/s/Hawaii--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJBeB5Twbb_3sRKIbMdNKCd0s&search_type=autocomplete_click&s_tag=9tVlX_q6",        "https://www.airbnb.com/s/Idaho--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=6&search_by_map=true&sw_lat=40.80660003895816&sw_lng=-120.51377687499996&ne_lat=50.563232789128705&ne_lng=-107.33018312499996",        "https://www.airbnb.com/s/Illinois--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJGSZubzgtC4gRVlkRZFCCFX8&search_type=autocomplete_click&s_tag=jsd5-c8u",        "https://www.airbnb.com/s/Indiana--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=7&search_by_map=true&sw_lat=37.70815117354962&sw_lng=-89.81423043749999&ne_lat=43.04319047305007&ne_lng=-83.22243356249999",        "https://www.airbnb.com/s/Iowa--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJGWD48W9e7ocR2VnHV0pj78Y&search_type=autocomplete_click&s_tag=h_D21jNt",        "https://www.airbnb.com/s/Kansas--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=7&search_by_map=true&sw_lat=35.75627428678989&sw_lng=-100.26761343750002&ne_lat=41.23729507152494&ne_lng=-93.67581656250002",    "https://www.airbnb.com/s/Kentucky--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJyVMZi0xzQogR_N_MxU5vH3c&search_type=autocomplete_click&s_tag=ehx_DWky",        "https://www.airbnb.com/s/Louisiana--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJZYIRslSkIIYRA0flgTL3Vck&search_type=autocomplete_click&s_tag=d0FsAE5O",        "https://www.airbnb.com/s/Maine--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJ1YpTHd4dsEwR0KggZ2_MedY&search_type=autocomplete_click&s_tag=TDm8aMuM",        "https://www.airbnb.com/s/Maryland--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJ35Dx6etNtokRsfZVdmU3r_I&search_type=autocomplete_click&s_tag=YzMZaOOO",        "https://www.airbnb.com/s/Massachusetts--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJ_b9z6W1l44kRHA2DVTbQxkU&search_type=autocomplete_click&s_tag=q7hqiz1E",        "https://www.airbnb.com/s/Michigan--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=6&search_by_map=true&sw_lat=39.2951978067844&sw_lng=-91.91548187499995&ne_lat=49.29217242363836&ne_lng=-78.73188812499995",    "https://www.airbnb.com/s/Minnesota--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJmwt4YJpbWE0RD6L-EJvJogI&search_type=autocomplete_click",        "https://www.airbnb.com/s/Mississippi--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJGdRK5OQyKIYR2qbc6X8XDWI&search_type=autocomplete_click&s_tag=rZxQD-_5",        "https://www.airbnb.com/s/Missouri--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJfeMiSNXmwIcRcr1mBFnEW7U&search_type=autocomplete_click&s_tag=AMGCwVHY",        "https://www.airbnb.com/s/Montana--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&search_type=unknown&zoom=7&search_by_map=true&sw_lat=44.13434758822801&sw_lng=-116.54967493749996&ne_lat=48.95084871138233&ne_lng=-109.95787806249996",        "https://www.airbnb.com/s/Nebraska--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJ7fwMtciNk4cRxArzDwyQJ6E&search_type=autocomplete_click&s_tag=hWgvYMKh",        "https://www.airbnb.com/s/Nevada--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJcbTe-KEKmYARs5X8qooDR88&search_type=autocomplete_click&s_tag=fKf21V53",        "https://www.airbnb.com/s/New-Hampshire--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJ66bAnUtEs0wR64CmJa8CyNc&search_type=autocomplete_click&s_tag=yJpUpLPl",        "https://www.airbnb.com/s/New-Jersey--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJn0AAnpX7wIkRjW0_-Ad70iw&search_type=autocomplete_click&s_tag=Xm8MIvYU",        "https://www.airbnb.com/s/New-Mexico--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJqVKY50NQGIcRup41Yxpuv0Y&search_type=autocomplete_click&s_tag=5eoQDhbj",        "https://www.airbnb.com/s/New-York--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJOwg_06VPwokRYv534QaPC8g&search_type=autocomplete_click&s_tag=ZHsPO4BU",        "https://www.airbnb.com/s/North-Carolina--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJgRo4_MQfVIgRGa4i6fUwP60&search_type=autocomplete_click",        "https://www.airbnb.com/s/North-Dakota--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJY-nYVxKD11IRyc9egzmahA0&search_type=autocomplete_click&s_tag=vG3-7Q-Z",        "https://www.airbnb.com/s/Ohio--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJwY5NtXrpNogRFtmfnDlkzeU&search_type=autocomplete_click&s_tag=afrE2bEs",        "https://www.airbnb.com/s/Oklahoma--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJnU-ssRE5rIcRSOoKQDPPHF0&search_type=autocomplete_click&s_tag=1ntMPwXj",        "https://www.airbnb.com/s/Oregon--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJVWqfm3xuk1QRdrgLettlTH0&search_type=autocomplete_click&s_tag=7UnQImP5",        "https://www.airbnb.com/s/Pennsylvania--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJieUyHiaALYgRPbQiUEchRsI&search_type=autocomplete_click&s_tag=xa2JLcnd",        "https://www.airbnb.com/s/Rhode-Island--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJD9cOYhQ15IkR5wbB57wYTh4&search_type=autocomplete_click&s_tag=byxz3uTk",    "https://www.airbnb.com/s/South-Carolina--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJ49ExeWml-IgRnhcF9TKh_7k&search_type=autocomplete_click&s_tag=w6q4QENu",        "https://www.airbnb.com/s/South-Dakota--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJpTjphS1DfYcRt6SGMSnW8Ac&search_type=autocomplete_click&s_tag=eTcvZy6R",        "https://www.airbnb.com/s/Tennessee--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJA8-XniNLYYgRVpGBpcEgPgM&search_type=autocomplete_click&s_tag=mS_JYkUr",        "https://www.airbnb.com/s/Texas--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJSTKCCzZwQIYRPN4IGI8c6xY&search_type=autocomplete_click&s_tag=3CYadgDF",        "https://www.airbnb.com/s/Utah--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJzfkTj8drTIcRP0bXbKVK370&search_type=autocomplete_click&s_tag=W1uY8shg",        "https://www.airbnb.com/s/Vermont--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJ_87aSGzctEwRtGtUNnSJTSY&search_type=autocomplete_click&s_tag=AG9FeguA",        "https://www.airbnb.com/s/Virginia--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJzbK8vXDWTIgRlaZGt0lBTsA&search_type=autocomplete_click&s_tag=TcM5XR3_",        "https://www.airbnb.com/s/Washington--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJ-bDD5__lhVQRuvNfbGh4QpQ&search_type=autocomplete_click&s_tag=j7iM3RDV",        "https://www.airbnb.com/s/West-Virginia--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJRQnL1KVUSogRQzrN3mjHALs&search_type=autocomplete_click&s_tag=hzEFewlp",        "https://www.airbnb.com/s/Wisconsin--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJr-OEkw_0qFIR1kmG-LjV1fI&search_type=autocomplete_click&s_tag=VpXyayHI",        "https://www.airbnb.com/s/Wyoming--United-States/homes?refinement_paths%5B%5D=%2Fhomes&click_referer=t%3ASEE_ALL%7Csid%3Aeb65332a-0e8c-478b-a69e-412f03cfeb47%7Cst%3ALANDING_PAGE_MARQUEE&place_id=ChIJaS7hSDTiXocRLzh90nkisCY&search_type=autocomplete_click&s_tag=VOWVhpYS"
    ]
    
    let googleLinks = [        "https://www.google.com/maps/place/Alabama/@32.5562927,-88.9244115,7z/data=!3m1!4b1!4m5!3m4!1s0x88867f341f4bfe75:0x5e55343553c8cce9!8m2!3d32.3182314!4d-86.902298",        "https://www.google.com/maps/place/Arizona/@34.148,-114.1731129,7z/data=!3m1!4b1!4m5!3m4!1s0x872b08ebcb4c186b:0x423927b17fc1cd71!8m2!3d34.0489281!4d-111.0937311",        "https://www.google.com/maps/place/Alaska/@60.1300881,-176.4627042,4z/data=!3m1!4b1!4m5!3m4!1s0x5400df9cc0aec01b:0xbcdb5e27a98adb35!8m2!3d64.2008413!4d-149.4936733",        "https://www.google.com/maps/place/Arkansas/@34.7313524,-94.3749334,7z/data=!3m1!4b1!4m5!3m4!1s0x87d29e3f743f2761:0xa405693effdfd2d0!8m2!3d35.20105!4d-91.8318334",        "https://www.google.com/maps/place/California/@37.1843025,-123.7976229,6z/data=!3m1!4b1!4m5!3m4!1s0x808fb9fe5f285e3d:0x8b5109a227086f55!8m2!3d36.778261!4d-119.4179324",    "https://www.google.com/maps/place/Colorado/@38.9764523,-107.7938734,7z/data=!3m1!4b1!4m5!3m4!1s0x874014749b1856b7:0xc75483314990a7ff!8m2!3d39.5500507!4d-105.7820674",        "https://www.google.com/maps/place/Connecticut/@41.4994047,-73.3179394,9z/data=!3m1!4b1!4m5!3m4!1s0x89e65311f21151a5:0xae9a6d5b056170e5!8m2!3d41.6032207!4d-73.087749",        "https://www.google.com/maps/place/Delaware/@39.143909,-75.9470946,9z/data=!3m1!4b1!4m5!3m4!1s0x89c705764d0cd63b:0x941d2d128c04e878!8m2!3d38.9108325!4d-75.5276699",        "https://www.google.com/maps/place/Florida/@27.5223125,-88.2987539,6z/data=!3m1!4b1!4m5!3m4!1s0x88c1766591562abf:0xf72e13d35bc74ed0!8m2!3d27.6648274!4d-81.5157535",        "https://www.google.com/maps/place/Georgia/@32.6581584,-85.4219665,7z/data=!3m1!4b1!4m5!3m4!1s0x88f136c51d5f8157:0x6684bc10ec4f10e7!8m2!3d32.1656221!4d-82.9000751",        "https://www.google.com/maps/place/Hawaii/@20.445606,-159.7492318,7z/data=!3m1!4b1!4m5!3m4!1s0x7bffdb064f79e005:0x4b7782d274cc8628!8m2!3d19.8967662!4d-155.5827818",        "https://www.google.com/maps/place/Idaho/@45.4066107,-118.631238,6z/data=!3m1!4b1!4m5!3m4!1s0x5358ffa885e499e9:0xd06b300515f78758!8m2!3d44.0682019!4d-114.7420408",        "https://www.google.com/maps/place/Illinois/@39.7177259,-91.5097682,7z/data=!3m1!4b1!4m5!3m4!1s0x880b2d386f6e2619:0x7f15825064115956!8m2!3d40.6331249!4d-89.3985283",        "https://www.google.com/maps/place/Indiana/@39.7449591,-88.6845366,7z/data=!3m1!4b1!4m5!3m4!1s0x886b50bcd9f81b1d:0x7e102fcecb32ec72!8m2!3d40.2671941!4d-86.1349019",        "https://www.google.com/maps/place/Iowa/@41.9164826,-95.6329226,7z/data=!3m1!4b1!4m5!3m4!1s0x87ee5e6ff1f86019:0xc6ef634a57c759d9!8m2!3d41.8780025!4d-93.097702",        "https://www.google.com/maps/place/Kansas/@38.4773796,-100.5634144,7z/data=!3m1!4b1!4m5!3m4!1s0x87a31771717c016b:0x68c2b4a94b3e095f!8m2!3d39.011902!4d-98.4842465",        "https://www.google.com/maps/place/Kentucky/@37.8010162,-88.0116168,7z/data=!3m1!4b1!4m5!3m4!1s0x8842734c8b1953c9:0x771f6f4ec5ccdffc!8m2!3d37.8393332!4d-84.2700179",        "https://www.google.com/maps/place/Louisiana/@30.917961,-93.6446319,7z/data=!3m1!4b1!4m5!3m4!1s0x8620a454b2118265:0xc955f73281e54703!8m2!3d30.9842977!4d-91.9623327",    "https://www.google.com/maps/place/Maine/@45.1664503,-71.2278234,7z/data=!3m1!4b1!4m5!3m4!1s0x4cb01dde1d538ad5:0xd679cc6f6720a8d0!8m2!3d45.253783!4d-69.4454689",        "https://www.google.com/maps/place/Maryland/@38.7994639,-78.3581109,8z/data=!3m1!4b1!4m5!3m4!1s0x89b64debe9f190df:0xf2af37657655f6b1!8m2!3d39.0457549!4d-76.6412712",        "https://www.google.com/maps/place/Massachusetts/@42.0314663,-72.8046079,8z/data=!3m1!4b1!4m5!3m4!1s0x89e3656de973bffd:0x45c6d03655830d1c!8m2!3d42.4072107!4d-71.3824374",        "https://www.google.com/maps/place/Michigan/@44.9131073,-90.7587187,6z/data=!3m1!4b1!4m5!3m4!1s0x4d4caa3dc7ca0411:0x97dd48597a62c9b3!8m2!3d44.3148443!4d-85.6023643",        "https://www.google.com/maps/place/Minnesota/@46.3540027,-97.8489046,6z/data=!3m1!4b1!4m5!3m4!1s0x4d585b9a60780b9b:0x2a2c99b10fea20f!8m2!3d46.729553!4d-94.6858998",        "https://www.google.com/maps/place/Mississippi/@32.5511704,-92.1201238,7z/data=!3m1!4b1!4m5!3m4!1s0x862832e4e44ad419:0x620d177fe9dca6da!8m2!3d32.3546679!4d-89.3985283",        "https://www.google.com/maps/place/Missouri/@38.283296,-94.6804471,7z/data=!3m1!4b1!4m5!3m4!1s0x87c0e6d54822e37d:0xb55bc4590466bd72!8m2!3d37.9642529!4d-91.8318334",        "https://www.google.com/maps/place/Montana/@46.5918457,-114.5323057,6z/data=!3m1!4b1!4m5!3m4!1s0x53412b9c2d7b8ad3:0xf571d658cf2a6c18!8m2!3d46.8796822!4d-110.3625658",        "https://www.google.com/maps/place/Nebraska/@41.4790234,-101.9240542,7z/data=!3m1!4b1!4m5!3m4!1s0x87938dc8b50cfced:0xa127900c0ff30ac4!8m2!3d41.4925374!4d-99.9018131",        "https://www.google.com/maps/place/Nevada/@38.4162399,-121.5136375,6z/data=!3m1!4b1!4m5!3m4!1s0x80990aa1f8deb471:0xcf47038aaafc95b3!8m2!3d38.8026097!4d-116.419389",        "https://www.google.com/maps/place/New+Hampshire/@43.9959005,-72.6872221,8z/data=!3m1!4b1!4m5!3m4!1s0x4cb3444b9dc0a6eb:0xd7c802af25a680eb!8m2!3d43.1938516!4d-71.5723953",        "https://www.google.com/maps/place/New+Jersey/@40.0676363,-75.8454528,8z/data=!3m1!4b1!4m5!3m4!1s0x89c0fb959e00409f:0x2cd27b07f83f6d8d!8m2!3d40.0583238!4d-74.4056612",        "https://www.google.com/maps/place/New+Mexico/@34.145859,-108.2696563,7z/data=!3m1!4b1!4m5!3m4!1s0x87185043e79852a9:0x46bf6e1a63359eba!8m2!3d34.5199402!4d-105.8700901",        "https://www.google.com/maps/place/New+York/@42.7247415,-78.0131141,7z/data=!3m1!4b1!4m5!3m4!1s0x4ccc4bf0f123a5a9:0xddcfc6c1de189567!8m2!3d43.2994285!4d-74.2179326",        "https://www.google.com/maps/place/North+Carolina/@35.1498323,-82.1045253,7z/data=!3m1!4b1!4m5!3m4!1s0x88541fc4fc381a81:0xad3f30f5e922ae19!8m2!3d35.7595731!4d-79.0192997",        "https://www.google.com/maps/place/North+Dakota/@47.4459418,-102.5450319,7z/data=!3m1!4b1!4m5!3m4!1s0x52d7831257d8e963:0xd849a39835ecfc9!8m2!3d47.5514926!4d-101.0020119",        "https://www.google.com/maps/place/Ohio/@40.3436035,-84.9124752,7z/data=!3m1!4b1!4m5!3m4!1s0x8836e97ab54d8ec1:0xe5cd64399c9fd916!8m2!3d40.4172871!4d-82.907123",        "https://www.google.com/maps/place/Oklahoma/@35.2883291,-100.9600819,7z/data=!3m1!4b1!4m5!3m4!1s0x87ac3911b1ac4f9d:0x5d1ccf33400aea48!8m2!3d35.0077519!4d-97.092877",        "https://www.google.com/maps/place/Oregon/@44.1234992,-122.8263855,7z/data=!3m1!4b1!4m5!3m4!1s0x54936e7c9b9f6a55:0x7d4c65db7a0bb876!8m2!3d43.8041334!4d-120.5542012",        "https://www.google.com/maps/place/Pennsylvania/@41.0961768,-79.8478745,7z/data=!3m1!4b1!4m5!3m4!1s0x882d80261e32e589:0xc24621475022b43d!8m2!3d41.2033216!4d-77.1945247",        "https://www.google.com/maps/place/Rhode+Island/@41.5559564,-72.0583467,9z/data=!3m1!4b1!4m5!3m4!1s0x89e43514620ed70f:0x1e4e18bce7c106e7!8m2!3d41.5800945!4d-71.4774291",        "https://www.google.com/maps/place/South+Carolina/@33.6194386,-82.0478151,8z/data=!3m1!4b1!4m5!3m4!1s0x88f8a5697931d1e3:0xb9ffa132f505179e!8m2!3d33.836081!4d-81.1637245",        "https://www.google.com/maps/place/South+Dakota/@44.1907507,-102.4901437,7z/data=!3m1!4b1!4m5!3m4!1s0x877d432d85e938a5:0x7f0d6293186a4b7!8m2!3d43.9695148!4d-99.9018131",        "https://www.google.com/maps/place/Tennessee/@35.8096718,-88.2220924,7z/data=!3m1!4b1!4m5!3m4!1s0x88614b239e97cf03:0x33e20c1a5819156!8m2!3d35.5174913!4d-86.5804473",        "https://www.google.com/maps/place/Texas/@31.0908926,-104.5699079,6z/data=!3m1!4b1!4m5!3m4!1s0x864070360b823249:0x16eb1c8f1808de3c!8m2!3d31.9685988!4d-99.9018131",        "https://www.google.com/maps/place/Utah/@39.4782026,-113.7903039,7z/data=!3m1!4b1!4m5!3m4!1s0x874c6bc78f13f9cd:0xbddf4aa56cd7463f!8m2!3d39.3209801!4d-111.0937311",        "https://www.google.com/maps/place/Vermont/@43.8662745,-73.5725562,8z/data=!3m1!4b1!4m5!3m4!1s0x4cb4dc6c48daceff:0x264d897436546bb4!8m2!3d44.5588028!4d-72.5778415",        "https://www.google.com/maps/place/Virginia/@37.9820744,-81.6642911,7z/data=!3m1!4b1!4m5!3m4!1s0x884cd670bdbcb2cd:0xc04e4149b746a695!8m2!3d37.4315734!4d-78.6568942",        "https://www.google.com/maps/place/Washington/@47.2511008,-123.1250563,7z/data=!3m1!4b1!4m5!3m4!1s0x5485e5ffe7c3b0f9:0x944278686c5ff3ba!8m2!3d47.7510741!4d-120.7401386",        "https://www.google.com/maps/place/West+Virginia/@38.8987012,-82.4250015,7z/data=!3m1!4b1!4m5!3m4!1s0x884a54a5d4cb0945:0xbb00c768decd3a43!8m2!3d38.5976262!4d-80.4549026",        "https://www.google.com/maps/place/Wisconsin/@38.8987012,-82.4250015,7z/data=!4m5!3m4!1s0x52a8f40f9384e3af:0xf2d5d5b8f88649d6!8m2!3d43.7844397!4d-88.7878678",        "https://www.google.com/maps/place/Wyoming/@42.9784202,-109.7976244,7z/data=!3m1!4b1!4m5!3m4!1s0x875ee23448e12e69:0x26b02279d27d382f!8m2!3d43.0759678!4d-107.2902839"
    ]
    
    let wikipediaLinks = [
        "https://en.wikipedia.org/wiki/Alabama",
        "https://en.wikipedia.org/wiki/Arizona",
        "https://en.wikipedia.org/wiki/Alaska",
        "https://en.wikipedia.org/wiki/Arkansas",
        "https://en.wikipedia.org/wiki/California",
        "https://en.wikipedia.org/wiki/Colorado",
        "https://en.wikipedia.org/wiki/Connecticut",
        "https://en.wikipedia.org/wiki/Delaware",
        "https://en.wikipedia.org/wiki/Florida",
        "https://en.wikipedia.org/wiki/Georgia_(U.S._state)",
        "https://en.wikipedia.org/wiki/Hawaii",
        "https://en.wikipedia.org/wiki/Idaho",
        "https://en.wikipedia.org/wiki/Illinois",
        "https://en.wikipedia.org/wiki/Indiana",
        "https://en.wikipedia.org/wiki/Iowa",
        "https://en.wikipedia.org/wiki/Kansas",
        "https://en.wikipedia.org/wiki/Kentucky",
        "https://en.wikipedia.org/wiki/Louisiana",
        "https://en.wikipedia.org/wiki/Maine",
        "https://en.wikipedia.org/wiki/Maryland",
        "https://en.wikipedia.org/wiki/Massachusetts",
        "https://en.wikipedia.org/wiki/Michigan",
        "https://en.wikipedia.org/wiki/Minnesota",
        "https://en.wikipedia.org/wiki/Mississippi",
        "https://en.wikipedia.org/wiki/Missouri",
        "https://en.wikipedia.org/wiki/Montana",
        "https://en.wikipedia.org/wiki/Nebraska",
        "https://en.wikipedia.org/wiki/Nevada",
        "https://en.wikipedia.org/wiki/New_Hampshire",
        "https://en.wikipedia.org/wiki/New_Jersey",
        "https://en.wikipedia.org/wiki/New_Mexico",
        "https://en.wikipedia.org/wiki/New_York",
        "https://en.wikipedia.org/wiki/North_Carolina",
        "https://en.wikipedia.org/wiki/North_Dakota",
        "https://en.wikipedia.org/wiki/Ohio",
        "https://en.wikipedia.org/wiki/Oklahoma",
        "https://en.wikipedia.org/wiki/Oregon",
        "https://en.wikipedia.org/wiki/Pennsylvania",
        "https://en.wikipedia.org/wiki/Rhode_Island",
        "https://en.wikipedia.org/wiki/South_Carolina",
        "https://en.wikipedia.org/wiki/South_Dakota",
        "https://en.wikipedia.org/wiki/Tennessee",
        "https://en.wikipedia.org/wiki/Texas",
        "https://en.wikipedia.org/wiki/Utah",
        "https://en.wikipedia.org/wiki/Vermont",
        "https://en.wikipedia.org/wiki/Virginia",
        "https://en.wikipedia.org/wiki/Washington_(state)",
        "https://en.wikipedia.org/wiki/West_Virginia",
        "https://en.wikipedia.org/wiki/Wisconsin",
        "https://en.wikipedia.org/wiki/Wyoming"
    ]
    
    let descriptions = [
        "\"Alabama is a southeastern U.S. state that’s home to significant landmarks from the American Civil Rights Movement. The city of Birmingham's 16th Street Baptist Church, now a museum, was a protest headquarters in the 1960s. Martin Luther King, Jr.'s church and the Rosa Parks Museum, dedicated to the activist, can be found in the capital of Montgomery.\"",
        "\"Arizona, a southwestern U.S. state, is best known for the Grand Canyon, the mile-deep chasm carved by the Colorado River. Flagstaff, a ponderosa pine–covered mountain town, is a major gateway to the Grand Canyon. Other natural sites include Saguaro National Park, protecting cactus-filled Sonoran Desert landscape. Tucson is University of Arizona territory and home to the Arizona-Sonora Desert Museum.\"",
        "\"Alaska is a U.S. state in the northwest extremity of the United States West Coast, just across the Bering Strait from Asia. The Canadian province of British Columbia and territory of Yukon border the state to the east and southeast.\"",
        "\"Arkansas is a southern U.S. state bordering the Mississippi River. It's known for its abundant park and wilderness areas, with terrain encompassing mountains, caves, rivers and hot springs. The rugged Ozarks region in its northwest has hiking trails and limestone caves such as Blanchard Springs Caverns. Its capital, Little Rock, hosts the Clinton Presidential Center, housing Bill Clinton’s presidential archives.\"",
        "\"California, a western U.S. state, stretches from the Mexican border along the Pacific for nearly 900 miles. Its terrain includes cliff-lined beaches, redwood forest, the Sierra Nevada Mountains, Central Valley farmland and the Mojave Desert. The city of Los Angeles is the seat of the Hollywood entertainment industry. Hilly San Francisco is known for the Golden Gate Bridge, Alcatraz Island and cable cars.\"",
        "\"Colorado, a western U.S. state, has a diverse landscape of arid desert, river canyons and snow-covered Rocky Mountains, which are partly protected by Rocky Mountain National Park. Elsewhere, Mesa Verde National Park features Ancestral Puebloan cliff dwellings. Perched a mile above sea level, Denver, Colorado’s capital and largest city, features a vibrant downtown area.\"",
        "\"Connecticut is a U.S. state in southern New England that has a mix of coastal cities and rural areas dotted with small towns. Mystic is famed for its Seaport museum filled with centuries-old ships, and the beluga whale exhibits at Mystic Aquarium. On Long Island Sound, the city of New Haven is known as the home of Yale University and its acclaimed Peabody Museum of Natural History.\"",
        "\"Delaware, a small Mid-Atlantic U.S. state, sits on a peninsula marked by dune-backed beaches bordering the Atlantic Ocean, Delaware River and Delaware Bay. In Dover, the capital, First State Heritage Park encompasses 18th-century Colonial landmarks like the Georgian-style Old State House. The city of Wilmington is known for the Riverfront, a waterside district of parks, boutiques and restaurants.\"",
        "\"Florida's close proximity to the ocean influences many aspects of Florida culture and daily life. Florida is a reflection of influences and multiple inheritance; African, European, indigenous, and Latino heritages can be found in the architecture and cuisine. Florida has attracted many writers such as Marjorie Kinnan Rawlings, Ernest Hemingway and Tennessee Williams, and continues to attract celebrities and athletes. It is internationally known for golf, tennis, auto racing, and water sports. Several beaches in Florida have turquoise and emerald-colored coastal waters.\"",
        "\"Georgia is a southeastern U.S. state whose terrain spans coastal beaches, farmland and mountains. Capital city Atlanta is home of the Georgia Aquarium and the Martin Luther King Jr. National Historic Site, dedicated to the African-American leader’s life and times. The city of Savannah is famed for its 18th- and 19th-century architecture and leafy public squares. Augusta hosts the Masters golf tournament.\"",
        "\"Hawaii is the 50th and most recent state to have joined the United States, having received statehood on August 21, 1959. Hawaii is the only U.S. state geographically located in Oceania, although it is governed as a part of North America, and the only one composed entirely of islands.\"",
        "\"Idaho is a northwestern U.S. state known for mountainous landscapes, and vast swaths of protected wilderness and outdoor recreation areas. The capital, Boise, is set in the Rocky Mountain foothills and is bisected by the Boise River, which is popular for rafting and fishing. The city’s riverfront Julia Davis Park is a downtown green space containing a rose garden, museums and a zoo.\"",
        "\"Illinois is a midwestern state bordering Indiana in the east and the Mississippi River in the west. Nicknamed \"the Prairie State,\" it's marked by farmland, forests, rolling hills and wetlands. Chicago, one of the largest cities in the U.S, is in the northeast on the shores of Lake Michigan. It’s famous for its skyscrapers, such as sleek, 1,451-ft. Willis Tower and the neo-Gothic Tribune Tower.\"",
        "\"Indiana is a U.S. state in the Midwestern and Great Lakes regions of North America. Indiana is the 38th-largest by area and the 17th-most populous of the 50 United States. Its capital and largest city is Indianapolis. Indiana was admitted to the United States as the 19th U.S. state on December 11, 1816.\"",
        "\"Iowa, a Midwestern U.S. state, sits between the Missouri and Mississippi rivers. It’s known for its landscape of rolling plains and cornfields. Landmarks in the capital, Des Moines, include the gold-domed, 19th-century State Capitol Building, Pappajohn Sculpture Park and the Des Moines Art Center, noted for its contemporary collections. The city of Cedar Rapids' Museum of Art has paintings by native Iowan Grant Wood.\"",
        "\"Kansas is a U.S. state in the Midwestern United States. Its capital is Topeka and its largest city is Wichita, with its most populated county being Johnson County. Kansas is bordered by Nebraska on the north; Missouri on the east; Oklahoma on the south; and Colorado on the west.\"",
        "\"Kentucky is a southeastern state bounded by the Ohio River in the north and the Appalachian Mountains in the east, with Frankfort the state capital. The state's largest city, Louisville, is home to the Kentucky Derby, the renowned horse race held at Churchill Downs on the first Saturday in May. The race is preceded by a 2-week festival and celebrated in the Kentucky Derby Museum year-round.\"",
        "\"Louisiana is a southeastern U.S. state on the Gulf of Mexico. Its history as a melting pot of French, African, American and French-Canadian cultures is reflected in its Creole and Cajun cultures. The largest city, New Orleans, is known for its colonial-era French Quarter, raucous Mardi Gras festival, jazz music, Renaissance-style St. Louis Cathedral and wartime exhibits at the huge National WWII Museum.\"",
        "\"Maine, the northeasternmost U.S. state, is known for its rocky coastline, maritime history and nature areas like the granite and spruce islands of Acadia National Park. Moose are plentiful in Baxter State Park, home to Mt. Katahdin, endpoint of the Appalachian Trail. Lighthouses such as the candy-striped beacon at West Quoddy Head, dot the coast, as do lobster shacks and sandy beaches like Ogunquit and Old Orchard.\"",
        "\"Maryland is a Mid-Atlantic state that's defined by its abundant waterways and coastlines on the Chesapeake Bay and Atlantic Ocean. Its largest city, Baltimore, has a long history as a major seaport. Fort McHenry, birthplace of the U.S. national anthem, sits at the mouth of Baltimore’s Inner Harbor, home to the National Aquarium and Maryland Science Center.\"",
        "\"Massachusetts, officially the Commonwealth of Massachusetts, is the most populous state in the New England region of the northeastern United States. It borders on the Atlantic Ocean to the east, the states of Connecticut and Rhode Island to the south, New Hampshire and Vermont to the north, and New York to the west.\"",
        "\"Michigan is a state in the Great Lakes and Midwestern regions of the United States. The state's name, Michigan, originates from the Ojibwe word mishigamaa, meaning \"large water\" or \"large lake\".\"",
        "\"Minnesota is a midwestern U.S. state bordering Canada and Lake Superior, the largest of the Great Lakes. The state contains more than 10,000 other lakes, including Lake Itasca, the Mississippi River’s primary source. The “Twin Cities” of Minneapolis and state capital Saint Paul are dense with cultural landmarks like the Science Museum of Minnesota and the Walker Art Center, a modern art museum.\"",
        "\"Mississippi is a southern U.S. state with the Mississippi River to its west, the state of Alabama to its east, and the Gulf of Mexico to the south. Its Mississippi Delta region is considered the birthplace of blues music, honored at the Delta Blues Museum in Clarksdale. Also in the region is the Vicksburg National Military Park, preserving the site of a critical Civil War battle.\"",
        "\"Missouri is a state in the Midwestern United States. With over six million residents, it is the 18th-most populous state of the Union. The largest urban areas are St. Louis, Kansas City, Springfield, and Columbia; the capital is Jefferson City. The state is the 21st-most extensive in area.\"",
        "\"Montana is a western state defined by its diverse terrain ranging from the Rocky Mountains to the Great Plains. Its wide-open spaces include Glacier National Park, a vast wilderness preserve that passes into Canada. The park’s many snow-capped peaks, lakes and alpine hiking trails are showcased along its famed Going-to-the-Sun Road, stretching 50 miles.\"",
        "\"Nebraska is a midwestern U.S. state encompassing the prairies of the Great Plains, the towering dunes of the Sandhills and the panhandle’s dramatic rock formations. Lincoln, the capital and a vibrant university town, is distinguished by its soaring state capitol. The city of Omaha is home to the Durham Museum, which honors the state’s pioneering past in a converted railroad depot.\"",
        "\"Nevada is a western U.S. state defined by its great expanses of desert, and by the 24-hour casinos and entertainment for which its largest city, Las Vegas, is famed. Las Vegas is home to elaborate theme hotels and luxury resorts that line its main thoroughfare, the Las Vegas Strip. The city's also home to museums such as the Mob Museum, extravagant live shows and upscale shopping malls and restaurants.\"",
        "\"New Hampshire, a U.S. state in New England, is defined by its quaint towns and large expanses of wilderness. In the north, White Mountain National Forest is known for winter sports areas and Mt. Washington, the region’s highest peak, with a cog railway to its summit. Also in the White Mountains are moose, black bears and part of the Appalachian Trail.\"",
        "\"New Jersey is a northeastern U.S. state with some 130 miles of Atlantic coast. Jersey City, across the Hudson River from Lower Manhattan, is the site of Liberty State Park, where ferries embark for nearby Ellis Island, with its historic Immigration Museum, and the iconic Statue of Liberty. The Jersey Shore includes notable resort towns like historic Asbury Park and Cape May, with its preserved Victorian buildings.\"",
        "\"New Mexico is a southwestern U.S. state whose diverse terrain encompasses the Chihuahuan Desert and the Sangre de Cristo Mountains. Its capital, Santa Fe, founded in 1610, is known for upscale spas and Spanish colonial architecture. It's also home to a vibrant arts scene, as well as the Georgia O’Keeffe Museum, featuring the artist's iconic New Mexican landscape paintings, and the open-air Santa Fe Opera.\"",
        "\"New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park. Broadway theater is staged in neon-lit Times Square.\"",
        "\"North Carolina is a state located in the southeastern region of the United States. North Carolina is the 28th largest and 9th-most populous of the 50 United States. North Carolina is bordered by Virginia to the north, the Atlantic Ocean to the east, Georgia and South Carolina to the south, and Tennessee to the west.\"",
        "\"North Dakota is a midwestern U.S. state dominated by the Great Plains. Its eastern city of Fargo showcases Native American and modern art at the Plains Art Museum. The area's immigrant history is honored at the Scandinavian Heritage Association in the city of Minot. The Great Plains give way to the rugged Badlands near the border with Montana, where Theodore Roosevelt National Park spans the Little Missouri River.\"",
        "\"Ohio is a midwestern U.S. state stretching from the Ohio River and Appalachian Mountains in the south to Lake Erie in the north. On the shores of the lake is the city of Cleveland, site of the Cleveland Museum of Art and its renowned collection of European paintings and especially Asian art. Cleveland is also home to the Rock and Roll Hall of Fame and Museum, and close to expansive Cuyahoga Valley National Park.\"",
        "\"Oklahoma is a state in the South Central region of the United States, bordered by Kansas on the north, Missouri on the northeast, Arkansas on the east, Texas on the south and west, New Mexico on the west, and Colorado on the northwest.\"",
        "\"Oregon is a coastal U.S. state in the Pacific Northwest known for its diverse landscape of forests, mountains, farms and beaches. The city of Portland is famed for its quirky, avant-garde culture and is home to iconic coffee shops, boutiques, farm-to-table restaurants and microbreweries. Highlights include the Native American art in the Portland Art Museum, the Japanese Garden and the Lan Su Chinese Garden.\"",
        "\"Pennsylvania, a northeastern U.S. state and one of the 13 original colonies, has a diverse terrain, which includes wide stretches of farmland, national forests and mountains. Philadelphia, the Keystone State’s largest city, displays its rich history in Independence Hall (where the Declaration of Independence and Constitution were signed) and the Liberty Bell, an enduring symbol of American freedom.\"",
        "\"Rhode Island, a U.S. state in New England, is known for sandy shores and seaside Colonial towns. It's home to several large cities, including Newport, which is famed for sailing and Gilded Age mansions, such as The Breakers. Providence, its capital, is home to Brown University, green Roger Williams Park, landscaped Waterplace Park and Riverwalk, with the famed WaterFire art installation.\"",
        "\"South Carolina is a southeastern U.S. state known for its shoreline of subtropical beaches and marshlike sea islands. Coastal Charleston is a historic city, defined by pastel-colored houses, Old South plantations and Fort Sumter, where the Civil War’s opening shots were fired. To the north is the Grand Strand, a roughly 60-mile stretch of beachfront known for golf courses and the vacation town Myrtle Beach.\"",
        "\"South Dakota is an expansive, sparsely populated midwestern U.S. state where rolling prairies give way to the dramatic Black Hills National Forest. Black Hills is home to 2 historical monuments carved right into towering granite peaks: Mt. Rushmore, the iconic depiction of 4 revered U.S. presidents, and Crazy Horse Memorial, a tribute to the storied Native American tribal leader.\"",
        "\"Tennessee is a landlocked state in the U.S. South. Its capital, centrally located Nashville, is the heart of the country-music scene, with the long-running Grand Ole Opry, the Country Music Hall of Fame and Museum and a legendary stretch of honky-tonks and dance halls. Memphis, in the far southwest, is the home of Elvis Presley’s Graceland, rock-and-roll pioneering Sun Studio and the blues clubs of Beale Street.\"",
        "\"Texas is the second largest state in the United States by both area and population. Geographically located in the South Central region of the country, Texas shares borders with the U.S. states of Louisiana to the east, Arkansas to the northeast, Oklahoma to the north, New Mexico to the west, and the Mexican states of Chihuahua, Coahuila, Nuevo León, and Tamaulipas to the southwest, and has a coastline with the Gulf of Mexico to the southeast.\"",
        "\"Utah is a state in the western United States. It became the 45th state admitted to the U.S. on January 4, 1896. Utah is the 13th-largest by area, 30th-most-populous, and 11th-least-densely populated of the 50 United States. Utah has a population of more than 3 million according to the Census estimate for July 1, 2016.\"",
        "\"Vermont is a state in the northeastern United States, known for its natural landscape, which is primarily forested. Part of the New England region, it's also known for being home to more than 100 19th-century covered wooden bridges, and as a major producer of maple syrup. Thousands of acres of mountain terrain are crossed by hiking trails and skiing slopes.\"",
        "\"Virginia, a southeastern U.S. state, stretches from the Chesapeake Bay to the Appalachian Mountains, with a long Atlantic coastline. It's one of the 13 original colonies, with historic landmarks including Monticello, founding father Thomas Jefferson’s iconic Charlottesville plantation. The Jamestown Settlement and Colonial Williamsburg are living-history museums reenacting Colonial and Revolutionary-era life.\"",
        "\"Washington, officially the State of Washington, is a state in the Pacific Northwest region of the United States. Named for George Washington, the first U.S. president, the state was made out of the western part of the Washington Territory, which was ceded by Britain in 1846 in accordance with the Oregon Treaty in the settlement of the Oregon boundary dispute.\"",
        "\"West Virginia is an eastern U.S. state in the tree-covered Appalachian Mountains. The town of Harpers Ferry, where the Shenandoah River meets the Potomac River, is the site of a famous Civil War–era raid. Surrounded by a national historical park, the town looks as it did in the 19th century, with many of the buildings open to the public as living-history museums.\"",
        "\"Wisconsin is a midwestern U.S. state with coastlines on 2 Great Lakes (Michigan and Superior) and an interior of forests and farms. Milwaukee, the largest city, is known for the Milwaukee Public Museum, with its numerous re-created international villages, and the Harley-Davidson Museum, displaying classic motorcycles. Several beer companies are based in Milwaukee, and many offer brewery tours.\"",
        "\"Wyoming is a state in the mountain region of the western United States. The state is the 10th largest by area, the least populous, and the second most sparsely populated state in the country.\""
    ]
    
    // Description of the current view
    @IBOutlet weak var summary: UITextView!
    
    // Array of labels
    @IBOutlet var labels: [UILabel]!
    
    // Array of photos
    @IBOutlet var photos: [UIImageView]!
    
    // Array of views
    @IBOutlet var views: [UIView]!
    
    // Footer with icons
    @IBOutlet weak var footer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.delegate = self
    }
    
    // The scroll view
    @IBOutlet weak var scrollView: UIScrollView!

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Movement Detected")
        currentTag = max
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.current.orientation.isLandscape {
            print("Landscape")
            currentTag = max
        } else {
            print("Portrait")
            currentTag = max
        }
    }
    
    @IBAction func tap(_ sender: UIGestureRecognizer) {
        
        // Get tag from the sender
        let tag = sender.view!.tag
        
        // If the footer is located at the bottom
        ifMax: if (currentTag == max) {
            // If the bottom view is tapped, break
            if (tag == max) {
                break ifMax
            }
            // Fade out footer
            UIView.animate(withDuration: 0.25) {
                self.footer.alpha = 0.0
            }
            // Move lower views down
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.summary.text = self.descriptions[tag-1]
                for i in tag...self.max {
                    if (i < self.max) {
                        UIView.animate(withDuration: 0.5) {
                            self.views[i].center.y += 192
                        }
                    }
                }
            }
            // Move footer below current view
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                self.footer.center.y = self.views[tag-1].center.y + 120
                UIView.animate(withDuration: 0.5) {
                    self.footer.alpha = 1.0
                }
                self.currentTag = tag
            }
        // If view is tapped a second time
        } else if (tag == currentTag) {
            UIView.animate(withDuration: 0.25) {
                self.footer.alpha = 0.0
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.summary.text = self.descriptions[self.max-1]
                for i in tag...self.max {
                    if (i < self.max) {
                        UIView.animate(withDuration: 0.5) {
                            self.views[i].center.y -= 192
                        }
                    }
                }
                self.footer.center.y = 2596
                UIView.animate(withDuration: 0.5) {
                    self.footer.alpha = 1.0
                }
                self.currentTag = self.max
            }
        // If the footer is not at the bottom
        // and a different view is tapped
        } else {
            UIView.animate(withDuration: 0.25) {
                self.footer.alpha = 0.0
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.summary.text = self.descriptions[tag-1]
                for i in self.currentTag...self.max {
                    if (i < self.max) {
                        UIView.animate(withDuration: 0.5) {
                            self.views[i].center.y -= 192
                        }
                    }
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.75) {
                for i in tag...self.max {
                    if (i < self.max) {
                        UIView.animate(withDuration: 0.5) {
                            self.views[i].center.y += 192
                        }
                    }
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                self.footer.center.y = self.views[tag-1].center.y + 120
                UIView.animate(withDuration: 0.5) {
                    self.footer.alpha = 1.0
                }
                self.currentTag = tag
            }
        }
    }
    
    // Called when the "Visited" button is tapped
    @IBAction func visited(_ sender: Any) {
        if (photos[currentTag-1].alpha < 0.5) {
            views[currentTag-1].bringSubviewToFront(labels[currentTag-1])
            photos[currentTag-1].alpha += 0.5
            counter += 1
            header.text = "States Visited: \(counter) / 50"
        } else {
            views[currentTag-1].bringSubviewToFront(photos[currentTag-1])
            photos[currentTag-1].alpha -= 0.5
            counter -= 1
            header.text = "States Visited: \(counter) / 50"
        }
    }
    
    @IBAction func airbnb(_ sender: Any) {
        let link: String = airbnbLinks[currentTag-1]
        if let url = URL(string: link) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func expedia(_ sender: Any) {
        if let url = URL(string: "https://www.expedia.com") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func google(_ sender: Any) {
        let link: String = googleLinks[currentTag-1]
        if let url = URL(string: link) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func wikipedia(_ sender: Any) {
        let link: String = wikipediaLinks[currentTag-1]
        if let url = URL(string: link) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        summary.font = summary.font?.withSize(summary.font!.pointSize - 1)
    }
    
    @IBAction func plus(_ sender: Any) {
        summary.font = summary.font?.withSize(summary.font!.pointSize + 1)
    }
}
