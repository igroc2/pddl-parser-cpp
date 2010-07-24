(define (problem pfile14)
(:domain TPP-MetricTimePreferences)
(:objects
	market1 market2 market3 market4 - market
	depot1 depot2 - depot
	truck1 truck2 truck3 - truck
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 goods12 goods13 goods14 goods15 goods16 - goods)

(:init
	(= (price goods1 market1) 49)
	(= (ready-to-load goods1 market1) 0)
	(= (on-sale goods1 market1) 17)
	(= (ready-to-load goods1 market2) 0)
	(= (on-sale goods1 market2) 0)
	(= (ready-to-load goods1 market3) 0)
	(= (on-sale goods1 market3) 0)
	(= (price goods1 market4) 15)
	(= (ready-to-load goods1 market4) 0)
	(= (on-sale goods1 market4) 16)
	(= (ready-to-load goods1 depot1) 0)
	(= (ready-to-load goods1 depot2) 0)
	(= (ready-to-load goods2 market1) 0)
	(= (on-sale goods2 market1) 0)
	(= (ready-to-load goods2 market2) 0)
	(= (on-sale goods2 market2) 0)
	(= (ready-to-load goods2 market3) 0)
	(= (on-sale goods2 market3) 0)
	(= (price goods2 market4) 24)
	(= (ready-to-load goods2 market4) 0)
	(= (on-sale goods2 market4) 4)
	(= (ready-to-load goods2 depot1) 0)
	(= (ready-to-load goods2 depot2) 0)
	(= (ready-to-load goods3 market1) 0)
	(= (on-sale goods3 market1) 0)
	(= (price goods3 market2) 14)
	(= (ready-to-load goods3 market2) 0)
	(= (on-sale goods3 market2) 4)
	(= (ready-to-load goods3 market3) 0)
	(= (on-sale goods3 market3) 0)
	(= (price goods3 market4) 18)
	(= (ready-to-load goods3 market4) 0)
	(= (on-sale goods3 market4) 17)
	(= (ready-to-load goods3 depot1) 0)
	(= (ready-to-load goods3 depot2) 0)
	(= (price goods4 market1) 17)
	(= (ready-to-load goods4 market1) 0)
	(= (on-sale goods4 market1) 3)
	(= (ready-to-load goods4 market2) 0)
	(= (on-sale goods4 market2) 0)
	(= (ready-to-load goods4 market3) 0)
	(= (on-sale goods4 market3) 0)
	(= (price goods4 market4) 9)
	(= (ready-to-load goods4 market4) 0)
	(= (on-sale goods4 market4) 20)
	(= (ready-to-load goods4 depot1) 0)
	(= (ready-to-load goods4 depot2) 0)
	(= (price goods5 market1) 15)
	(= (ready-to-load goods5 market1) 0)
	(= (on-sale goods5 market1) 18)
	(= (price goods5 market2) 11)
	(= (ready-to-load goods5 market2) 0)
	(= (on-sale goods5 market2) 15)
	(= (ready-to-load goods5 market3) 0)
	(= (on-sale goods5 market3) 0)
	(= (price goods5 market4) 12)
	(= (ready-to-load goods5 market4) 0)
	(= (on-sale goods5 market4) 5)
	(= (ready-to-load goods5 depot1) 0)
	(= (ready-to-load goods5 depot2) 0)
	(= (ready-to-load goods6 market1) 0)
	(= (on-sale goods6 market1) 0)
	(= (price goods6 market2) 47)
	(= (ready-to-load goods6 market2) 0)
	(= (on-sale goods6 market2) 3)
	(= (price goods6 market3) 24)
	(= (ready-to-load goods6 market3) 0)
	(= (on-sale goods6 market3) 11)
	(= (price goods6 market4) 32)
	(= (ready-to-load goods6 market4) 0)
	(= (on-sale goods6 market4) 16)
	(= (ready-to-load goods6 depot1) 0)
	(= (ready-to-load goods6 depot2) 0)
	(= (ready-to-load goods7 market1) 0)
	(= (on-sale goods7 market1) 0)
	(= (price goods7 market2) 36)
	(= (ready-to-load goods7 market2) 0)
	(= (on-sale goods7 market2) 1)
	(= (price goods7 market3) 36)
	(= (ready-to-load goods7 market3) 0)
	(= (on-sale goods7 market3) 8)
	(= (price goods7 market4) 25)
	(= (ready-to-load goods7 market4) 0)
	(= (on-sale goods7 market4) 3)
	(= (ready-to-load goods7 depot1) 0)
	(= (ready-to-load goods7 depot2) 0)
	(= (ready-to-load goods8 market1) 0)
	(= (on-sale goods8 market1) 0)
	(= (ready-to-load goods8 market2) 0)
	(= (on-sale goods8 market2) 0)
	(= (price goods8 market3) 1)
	(= (ready-to-load goods8 market3) 0)
	(= (on-sale goods8 market3) 2)
	(= (price goods8 market4) 13)
	(= (ready-to-load goods8 market4) 0)
	(= (on-sale goods8 market4) 12)
	(= (ready-to-load goods8 depot1) 0)
	(= (ready-to-load goods8 depot2) 0)
	(= (ready-to-load goods9 market1) 0)
	(= (on-sale goods9 market1) 0)
	(= (price goods9 market2) 3)
	(= (ready-to-load goods9 market2) 0)
	(= (on-sale goods9 market2) 16)
	(= (ready-to-load goods9 market3) 0)
	(= (on-sale goods9 market3) 0)
	(= (price goods9 market4) 47)
	(= (ready-to-load goods9 market4) 0)
	(= (on-sale goods9 market4) 11)
	(= (ready-to-load goods9 depot1) 0)
	(= (ready-to-load goods9 depot2) 0)
	(= (ready-to-load goods10 market1) 0)
	(= (on-sale goods10 market1) 0)
	(= (ready-to-load goods10 market2) 0)
	(= (on-sale goods10 market2) 0)
	(= (price goods10 market3) 8)
	(= (ready-to-load goods10 market3) 0)
	(= (on-sale goods10 market3) 7)
	(= (price goods10 market4) 10)
	(= (ready-to-load goods10 market4) 0)
	(= (on-sale goods10 market4) 18)
	(= (ready-to-load goods10 depot1) 0)
	(= (ready-to-load goods10 depot2) 0)
	(= (price goods11 market1) 27)
	(= (ready-to-load goods11 market1) 0)
	(= (on-sale goods11 market1) 15)
	(= (price goods11 market2) 12)
	(= (ready-to-load goods11 market2) 0)
	(= (on-sale goods11 market2) 4)
	(= (price goods11 market3) 3)
	(= (ready-to-load goods11 market3) 0)
	(= (on-sale goods11 market3) 11)
	(= (price goods11 market4) 6)
	(= (ready-to-load goods11 market4) 0)
	(= (on-sale goods11 market4) 4)
	(= (ready-to-load goods11 depot1) 0)
	(= (ready-to-load goods11 depot2) 0)
	(= (price goods12 market1) 18)
	(= (ready-to-load goods12 market1) 0)
	(= (on-sale goods12 market1) 15)
	(= (ready-to-load goods12 market2) 0)
	(= (on-sale goods12 market2) 0)
	(= (price goods12 market3) 30)
	(= (ready-to-load goods12 market3) 0)
	(= (on-sale goods12 market3) 4)
	(= (price goods12 market4) 30)
	(= (ready-to-load goods12 market4) 0)
	(= (on-sale goods12 market4) 13)
	(= (ready-to-load goods12 depot1) 0)
	(= (ready-to-load goods12 depot2) 0)
	(= (price goods13 market1) 5)
	(= (ready-to-load goods13 market1) 0)
	(= (on-sale goods13 market1) 5)
	(= (ready-to-load goods13 market2) 0)
	(= (on-sale goods13 market2) 0)
	(= (ready-to-load goods13 market3) 0)
	(= (on-sale goods13 market3) 0)
	(= (price goods13 market4) 31)
	(= (ready-to-load goods13 market4) 0)
	(= (on-sale goods13 market4) 1)
	(= (ready-to-load goods13 depot1) 0)
	(= (ready-to-load goods13 depot2) 0)
	(= (ready-to-load goods14 market1) 0)
	(= (on-sale goods14 market1) 0)
	(= (ready-to-load goods14 market2) 0)
	(= (on-sale goods14 market2) 0)
	(= (price goods14 market3) 24)
	(= (ready-to-load goods14 market3) 0)
	(= (on-sale goods14 market3) 10)
	(= (price goods14 market4) 33)
	(= (ready-to-load goods14 market4) 0)
	(= (on-sale goods14 market4) 1)
	(= (ready-to-load goods14 depot1) 0)
	(= (ready-to-load goods14 depot2) 0)
	(= (ready-to-load goods15 market1) 0)
	(= (on-sale goods15 market1) 0)
	(= (price goods15 market2) 27)
	(= (ready-to-load goods15 market2) 0)
	(= (on-sale goods15 market2) 17)
	(= (ready-to-load goods15 market3) 0)
	(= (on-sale goods15 market3) 0)
	(= (price goods15 market4) 40)
	(= (ready-to-load goods15 market4) 0)
	(= (on-sale goods15 market4) 3)
	(= (ready-to-load goods15 depot1) 0)
	(= (ready-to-load goods15 depot2) 0)
	(= (price goods16 market1) 35)
	(= (ready-to-load goods16 market1) 0)
	(= (on-sale goods16 market1) 5)
	(= (ready-to-load goods16 market2) 0)
	(= (on-sale goods16 market2) 0)
	(= (price goods16 market3) 8)
	(= (ready-to-load goods16 market3) 0)
	(= (on-sale goods16 market3) 20)
	(= (price goods16 market4) 15)
	(= (ready-to-load goods16 market4) 0)
	(= (on-sale goods16 market4) 4)
	(= (ready-to-load goods16 depot1) 0)
	(= (ready-to-load goods16 depot2) 0)
	(connected market1 market2)
	(connected market2 market1)
	(= (drive-cost market1 market2) 324.00)
	(= (drive-cost market2 market1) 324.00)
	(= (drive-time market1 market2) 972.00)
	(= (drive-time market2 market1) 972.00)
	(connected market1 market3)
	(connected market3 market1)
	(= (drive-cost market1 market3) 232.00)
	(= (drive-cost market3 market1) 232.00)
	(= (drive-time market1 market3) 696.00)
	(= (drive-time market3 market1) 696.00)
	(connected market1 market4)
	(connected market4 market1)
	(= (drive-cost market1 market4) 500.00)
	(= (drive-cost market4 market1) 500.00)
	(= (drive-time market1 market4) 1500.00)
	(= (drive-time market4 market1) 1500.00)
	(connected market2 market3)
	(connected market3 market2)
	(= (drive-cost market2 market3) 617.00)
	(= (drive-cost market3 market2) 617.00)
	(= (drive-time market2 market3) 1851.00)
	(= (drive-time market3 market2) 1851.00)
	(connected market2 market4)
	(connected market4 market2)
	(= (drive-cost market2 market4) 465.00)
	(= (drive-cost market4 market2) 465.00)
	(= (drive-time market2 market4) 1395.00)
	(= (drive-time market4 market2) 1395.00)
	(connected market3 market4)
	(connected market4 market3)
	(= (drive-cost market3 market4) 643.00)
	(= (drive-cost market4 market3) 643.00)
	(= (drive-time market3 market4) 1929.00)
	(= (drive-time market4 market3) 1929.00)
	(connected depot1 market1)
	(connected market1 depot1)
	(= (drive-cost market1 depot1) 150.00)
	(= (drive-cost depot1 market1) 150.00)
	(= (drive-time market1 depot1) 450.00)
	(= (drive-time depot1 market1) 450.00)
	(connected depot1 market2)
	(connected market2 depot1)
	(= (drive-cost market2 depot1) 83.00)
	(= (drive-cost depot1 market2) 83.00)
	(= (drive-time market2 depot1) 249.00)
	(= (drive-time depot1 market2) 249.00)
	(connected depot1 market3)
	(connected market3 depot1)
	(= (drive-cost market3 depot1) 932.00)
	(= (drive-cost depot1 market3) 932.00)
	(= (drive-time market3 depot1) 2796.00)
	(= (drive-time depot1 market3) 2796.00)
	(connected depot1 market4)
	(connected market4 depot1)
	(= (drive-cost market4 depot1) 511.00)
	(= (drive-cost depot1 market4) 511.00)
	(= (drive-time market4 depot1) 1533.00)
	(= (drive-time depot1 market4) 1533.00)
	(connected depot2 market1)
	(connected market1 depot2)
	(= (drive-cost market1 depot2) 961.00)
	(= (drive-cost depot2 market1) 961.00)
	(= (drive-time market1 depot2) 2883.00)
	(= (drive-time depot2 market1) 2883.00)
	(connected depot2 market2)
	(connected market2 depot2)
	(= (drive-cost market2 depot2) 459.00)
	(= (drive-cost depot2 market2) 459.00)
	(= (drive-time market2 depot2) 1377.00)
	(= (drive-time depot2 market2) 1377.00)
	(connected depot2 market3)
	(connected market3 depot2)
	(= (drive-cost market3 depot2) 752.00)
	(= (drive-cost depot2 market3) 752.00)
	(= (drive-time market3 depot2) 2256.00)
	(= (drive-time depot2 market3) 2256.00)
	(connected depot2 market4)
	(connected market4 depot2)
	(= (drive-cost market4 depot2) 873.00)
	(= (drive-cost depot2 market4) 873.00)
	(= (drive-time market4 depot2) 2619.00)
	(= (drive-time depot2 market4) 2619.00)
	(= (loaded goods1 truck1) 0)
	(= (loaded goods2 truck1) 0)
	(= (loaded goods3 truck1) 0)
	(= (loaded goods4 truck1) 0)
	(= (loaded goods5 truck1) 0)
	(= (loaded goods6 truck1) 0)
	(= (loaded goods7 truck1) 0)
	(= (loaded goods8 truck1) 0)
	(= (loaded goods9 truck1) 0)
	(= (loaded goods10 truck1) 0)
	(= (loaded goods11 truck1) 0)
	(= (loaded goods12 truck1) 0)
	(= (loaded goods13 truck1) 0)
	(= (loaded goods14 truck1) 0)
	(= (loaded goods15 truck1) 0)
	(= (loaded goods16 truck1) 0)
	(at truck1 depot2)
	(= (loaded goods1 truck2) 0)
	(= (loaded goods2 truck2) 0)
	(= (loaded goods3 truck2) 0)
	(= (loaded goods4 truck2) 0)
	(= (loaded goods5 truck2) 0)
	(= (loaded goods6 truck2) 0)
	(= (loaded goods7 truck2) 0)
	(= (loaded goods8 truck2) 0)
	(= (loaded goods9 truck2) 0)
	(= (loaded goods10 truck2) 0)
	(= (loaded goods11 truck2) 0)
	(= (loaded goods12 truck2) 0)
	(= (loaded goods13 truck2) 0)
	(= (loaded goods14 truck2) 0)
	(= (loaded goods15 truck2) 0)
	(= (loaded goods16 truck2) 0)
	(at truck2 depot2)
	(= (loaded goods1 truck3) 0)
	(= (loaded goods2 truck3) 0)
	(= (loaded goods3 truck3) 0)
	(= (loaded goods4 truck3) 0)
	(= (loaded goods5 truck3) 0)
	(= (loaded goods6 truck3) 0)
	(= (loaded goods7 truck3) 0)
	(= (loaded goods8 truck3) 0)
	(= (loaded goods9 truck3) 0)
	(= (loaded goods10 truck3) 0)
	(= (loaded goods11 truck3) 0)
	(= (loaded goods12 truck3) 0)
	(= (loaded goods13 truck3) 0)
	(= (loaded goods14 truck3) 0)
	(= (loaded goods15 truck3) 0)
	(= (loaded goods16 truck3) 0)
	(at truck3 depot1)
	(= (stored goods1) 0)
	(= (stored goods2) 0)
	(= (stored goods3) 0)
	(= (stored goods4) 0)
	(= (stored goods5) 0)
	(= (stored goods6) 0)
	(= (stored goods7) 0)
	(= (stored goods8) 0)
	(= (stored goods9) 0)
	(= (stored goods10) 0)
	(= (stored goods11) 0)
	(= (stored goods12) 0)
	(= (stored goods13) 0)
	(= (stored goods14) 0)
	(= (stored goods15) 0)
	(= (stored goods16) 0)
	(= (total-cost) 0)
	(= (rebate-rate market1) 0.82)
	(= (rebate-rate market2) 0.84)
	(= (rebate-rate market3) 0.84)
	(= (rebate-rate market4) 0.78)
	(= (bought goods1) 0)
	(= (bought goods2) 0)
	(= (bought goods3) 0)
	(= (bought goods4) 0)
	(= (bought goods5) 0)
	(= (bought goods6) 0)
	(= (bought goods7) 0)
	(= (bought goods8) 0)
	(= (bought goods9) 0)
	(= (bought goods10) 0)
	(= (bought goods11) 0)
	(= (bought goods12) 0)
	(= (bought goods13) 0)
	(= (bought goods14) 0)
	(= (bought goods15) 0)
	(= (bought goods16) 0)
	(= (request goods1) 25)
	(= (request goods2) 2)
	(= (request goods3) 8)
	(= (request goods4) 11)
	(= (request goods5) 15)
	(= (request goods6) 17)
	(= (request goods7) 8)
	(= (request goods8) 9)
	(= (request goods9) 14)
	(= (request goods10) 25)
	(= (request goods11) 9)
	(= (request goods12) 6)
	(= (request goods13) 1)
	(= (request goods14) 5)
	(= (request goods15) 3)
	(= (request goods16) 6))

(:goal (and
	(>= (stored goods1) (request goods1))
	(>= (stored goods2) (request goods2))
	(>= (stored goods3) (request goods3))
	(>= (stored goods4) (request goods4))
	(>= (stored goods5) (request goods5))
	(>= (stored goods6) (request goods6))
	(>= (stored goods7) (request goods7))
	(>= (stored goods8) (request goods8))
	(>= (stored goods9) (request goods9))
	(>= (stored goods10) (request goods10))
	(>= (stored goods11) (request goods11))
	(>= (stored goods12) (request goods12))
	(>= (stored goods13) (request goods13))
	(>= (stored goods14) (request goods14))
	(>= (stored goods15) (request goods15))
	(>= (stored goods16) (request goods16))))

(:constraints (and
	(forall (?g - goods)
	   (preference p5A (at end (forall (?m - market ?t - truck)
				       (and (= (ready-to-load ?g ?m) 0)
					    (= (loaded ?g ?t) 0))))))

	(forall (?t - truck ?g - goods)
	   (preference p1A (at-most-once (> (loaded ?g ?t) 0))))

	(forall (?m - market ?t - truck)
	   (preference p2A (at-most-once (at ?t ?m))))

	(forall (?m - market ?t1 ?t2 - truck)
	   (preference p1B (always (imply (and (at ?t1 ?m) (at ?t2 ?m))
					  (= ?t1 ?t2)))))

	(preference p0A (always (>= (stored goods3) (stored goods12))))
	(preference p0B (always (>= (stored goods4) (stored goods11))))
	(preference p0C (always (>= (stored goods7) (stored goods12))))
	(preference p0D (always (>= (stored goods8) (stored goods12))))
	(preference p0E (always (>= (stored goods14) (stored goods15))))

	(forall (?t - truck)
	   (preference p4A (always-within 1829.00 (> (loaded goods9 ?t) 0)
			      (= (loaded goods9 ?t) 0))))

	(forall (?t - truck)
	   (preference p4B (always-within 3092.00 (> (loaded goods11 ?t) 0)
			      (= (loaded goods11 ?t) 0))))

	(forall (?t - truck)
	   (preference p4C (always-within 2420.00 (> (loaded goods8 ?t) 0)
			      (= (loaded goods8 ?t) 0))))

	(forall (?t - truck)
	   (preference p4D (always-within 1367.00 (> (loaded goods3 ?t) 0)
			      (= (loaded goods3 ?t) 0))))

	(forall (?t - truck)
	   (preference p3A (sometime (exists (?g - goods) (> (loaded ?g ?t) 0)))))

	(preference p0F (sometime-before (> (stored goods16) 0)
			   (>= (stored goods2) (request goods2))))
	(preference p0G (sometime-before (> (stored goods10) 0)
			   (>= (stored goods1) (request goods1))))
	(preference p0H (sometime-before (> (stored goods6) 0)
			   (>= (stored goods9) (request goods9))))

	(preference p0I (sometime-before (> (stored goods5) 0)
			   (>= (bought goods13) (request goods13))))))

(:metric minimize (+ (* 1 (is-violated p0A))
		     (* 1 (is-violated p0B))
		     (* 1 (is-violated p0C))
		     (* 1 (is-violated p0D))
		     (* 1 (is-violated p0E))
		     (* 1 (is-violated p0F))
		     (* 1 (is-violated p0G))
		     (* 1 (is-violated p0H))
		     (* 1 (is-violated p0I))
		     (* 2 (is-violated p1A))
		     (* 2 (is-violated p1B))
		     (* 3 (is-violated p2A))
		     (* 4 (is-violated p3A))
		     (* 5 (is-violated p4A))
		     (* 5 (is-violated p4B))
		     (* 5 (is-violated p4C))
		     (* 5 (is-violated p4D))
		     (* 6 (is-violated p5A))
		     (* 1 (is-violated p-drive))))
)