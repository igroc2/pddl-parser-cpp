
(define (problem os-complex-wbop_30_30-20)
        (:domain openstacks-complex)
        (:objects o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 o11 o12 o13 o14 o15 o16 o17
         o18 o19 o20 o21 o22 o23 o24 o25 o26 o27 o28 o29 o30 - order p1 p2 p3
         p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22
         p23 p24 p25 p26 p27 p28 p29 p30 - product)
        (:init (waiting o1) (includes o1 p18) (includes o1 p19)
         (includes o1 p21) (waiting o2) (includes o2 p7) (includes o2 p19)
         (includes o2 p24) (waiting o3) (includes o3 p3) (includes o3 p10)
         (includes o3 p18) (waiting o4) (includes o4 p6) (includes o4 p11)
         (includes o4 p21) (waiting o5) (includes o5 p13) (includes o5 p17)
         (includes o5 p25) (waiting o6) (includes o6 p3) (includes o6 p10)
         (includes o6 p22) (waiting o7) (includes o7 p11) (includes o7 p27)
         (includes o7 p28) (waiting o8) (includes o8 p6) (includes o8 p11)
         (includes o8 p17) (waiting o9) (includes o9 p16) (includes o9 p22)
         (includes o9 p26) (waiting o10) (includes o10 p5) (includes o10 p19)
         (includes o10 p27) (waiting o11) (includes o11 p1) (includes o11 p14)
         (includes o11 p29) (waiting o12) (includes o12 p4) (includes o12 p13)
         (includes o12 p17) (waiting o13) (includes o13 p9) (includes o13 p22)
         (includes o13 p25) (waiting o14) (includes o14 p7) (includes o14 p9)
         (includes o14 p23) (waiting o15) (includes o15 p8) (includes o15 p15)
         (includes o15 p28) (waiting o16) (includes o16 p1) (includes o16 p2)
         (includes o16 p29) (waiting o17) (includes o17 p9) (includes o17 p26)
         (includes o17 p28) (waiting o18) (includes o18 p3) (includes o18 p6)
         (includes o18 p15) (waiting o19) (includes o19 p12) (includes o19 p14)
         (includes o19 p20) (waiting o20) (includes o20 p7) (includes o20 p24)
         (includes o20 p30) (waiting o21) (includes o21 p2) (includes o21 p13)
         (includes o21 p20) (waiting o22) (includes o22 p5) (includes o22 p10)
         (includes o22 p23) (waiting o23) (includes o23 p5) (includes o23 p23)
         (includes o23 p24) (waiting o24) (includes o24 p12) (includes o24 p14)
         (includes o24 p21) (waiting o25) (includes o25 p1) (includes o25 p2)
         (includes o25 p27) (waiting o26) (includes o26 p16) (includes o26 p26)
         (includes o26 p30) (waiting o27) (includes o27 p4) (includes o27 p16)
         (includes o27 p30) (waiting o28) (includes o28 p8) (includes o28 p12)
         (includes o28 p20) (waiting o29) (includes o29 p8) (includes o29 p18)
         (includes o29 p29) (waiting o30) (includes o30 p4) (includes o30 p15)
         (includes o30 p25) (= (make-time p1) 30) (= (make-time p2) 270)
         (= (make-time p3) 120) (= (make-time p4) 270) (= (make-time p5) 120)
         (= (make-time p6) 300) (= (make-time p7) 240) (= (make-time p8) 60)
         (= (make-time p9) 90) (= (make-time p10) 210) (= (make-time p11) 270)
         (= (make-time p12) 150) (= (make-time p13) 270)
         (= (make-time p14) 120) (= (make-time p15) 240) (= (make-time p16) 60)
         (= (make-time p17) 60) (= (make-time p18) 90) (= (make-time p19) 210)
         (= (make-time p20) 30) (= (make-time p21) 300) (= (make-time p22) 210)
         (= (make-time p23) 240) (= (make-time p24) 120)
         (= (make-time p25) 300) (= (make-time p26) 180)
         (= (make-time p27) 270) (= (make-time p28) 300)
         (= (make-time p29) 210) (= (make-time p30) 240) (= (stacks-in-use) 0)
         (= (max-in-use) 0))
        (:goal
         (and (shipped o1)
              (shipped o2)
              (shipped o3)
              (shipped o4)
              (shipped o5)
              (shipped o6)
              (shipped o7)
              (shipped o8)
              (shipped o9)
              (shipped o10)
              (shipped o11)
              (shipped o12)
              (shipped o13)
              (shipped o14)
              (shipped o15)
              (shipped o16)
              (shipped o17)
              (shipped o18)
              (shipped o19)
              (shipped o20)
              (shipped o21)
              (shipped o22)
              (shipped o23)
              (shipped o24)
              (shipped o25)
              (shipped o26)
              (shipped o27)
              (shipped o28)
              (shipped o29)
              (shipped o30)))
        (:metric minimize (+ (* 34.5 (max-in-use)) (total-time))))
