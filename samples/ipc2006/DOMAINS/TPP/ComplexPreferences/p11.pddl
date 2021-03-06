(define (problem pfile11)
(:domain TPP-MetricTimePreferences)
(:objects
	market1 market2 market3 - market
	depot1 depot2 - depot
	truck1 truck2 truck3 - truck
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 goods12 goods13 - goods)

(:init
	(= (price goods1 market1) 49)
	(= (ready-to-load goods1 market1) 0)
	(= (on-sale goods1 market1) 17)
	(= (ready-to-load goods1 market2) 0)
	(= (on-sale goods1 market2) 0)
	(= (price goods1 market3) 26)
	(= (ready-to-load goods1 market3) 0)
	(= (on-sale goods1 market3) 14)
	(= (ready-to-load goods1 depot1) 0)
	(= (ready-to-load goods1 depot2) 0)
	(= (ready-to-load goods2 market1) 0)
	(= (on-sale goods2 market1) 0)
	(= (ready-to-load goods2 market2) 0)
	(= (on-sale goods2 market2) 0)
	(= (price goods2 market3) 30)
	(= (ready-to-load goods2 market3) 0)
	(= (on-sale goods2 market3) 7)
	(= (ready-to-load goods2 depot1) 0)
	(= (ready-to-load goods2 depot2) 0)
	(= (price goods3 market1) 29)
	(= (ready-to-load goods3 market1) 0)
	(= (on-sale goods3 market1) 14)
	(= (price goods3 market2) 14)
	(= (ready-to-load goods3 market2) 0)
	(= (on-sale goods3 market2) 4)
	(= (price goods3 market3) 37)
	(= (ready-to-load goods3 market3) 0)
	(= (on-sale goods3 market3) 14)
	(= (ready-to-load goods3 depot1) 0)
	(= (ready-to-load goods3 depot2) 0)
	(= (price goods4 market1) 43)
	(= (ready-to-load goods4 market1) 0)
	(= (on-sale goods4 market1) 2)
	(= (price goods4 market2) 33)
	(= (ready-to-load goods4 market2) 0)
	(= (on-sale goods4 market2) 9)
	(= (price goods4 market3) 9)
	(= (ready-to-load goods4 market3) 0)
	(= (on-sale goods4 market3) 20)
	(= (ready-to-load goods4 depot1) 0)
	(= (ready-to-load goods4 depot2) 0)
	(= (price goods5 market1) 15)
	(= (ready-to-load goods5 market1) 0)
	(= (on-sale goods5 market1) 18)
	(= (price goods5 market2) 11)
	(= (ready-to-load goods5 market2) 0)
	(= (on-sale goods5 market2) 15)
	(= (price goods5 market3) 25)
	(= (ready-to-load goods5 market3) 0)
	(= (on-sale goods5 market3) 2)
	(= (ready-to-load goods5 depot1) 0)
	(= (ready-to-load goods5 depot2) 0)
	(= (ready-to-load goods6 market1) 0)
	(= (on-sale goods6 market1) 0)
	(= (ready-to-load goods6 market2) 0)
	(= (on-sale goods6 market2) 0)
	(= (price goods6 market3) 47)
	(= (ready-to-load goods6 market3) 0)
	(= (on-sale goods6 market3) 3)
	(= (ready-to-load goods6 depot1) 0)
	(= (ready-to-load goods6 depot2) 0)
	(= (price goods7 market1) 24)
	(= (ready-to-load goods7 market1) 0)
	(= (on-sale goods7 market1) 11)
	(= (price goods7 market2) 32)
	(= (ready-to-load goods7 market2) 0)
	(= (on-sale goods7 market2) 16)
	(= (price goods7 market3) 1)
	(= (ready-to-load goods7 market3) 0)
	(= (on-sale goods7 market3) 12)
	(= (ready-to-load goods7 depot1) 0)
	(= (ready-to-load goods7 depot2) 0)
	(= (price goods8 market1) 18)
	(= (ready-to-load goods8 market1) 0)
	(= (on-sale goods8 market1) 6)
	(= (price goods8 market2) 33)
	(= (ready-to-load goods8 market2) 0)
	(= (on-sale goods8 market2) 10)
	(= (price goods8 market3) 42)
	(= (ready-to-load goods8 market3) 0)
	(= (on-sale goods8 market3) 8)
	(= (ready-to-load goods8 depot1) 0)
	(= (ready-to-load goods8 depot2) 0)
	(= (price goods9 market1) 1)
	(= (ready-to-load goods9 market1) 0)
	(= (on-sale goods9 market1) 2)
	(= (price goods9 market2) 13)
	(= (ready-to-load goods9 market2) 0)
	(= (on-sale goods9 market2) 12)
	(= (price goods9 market3) 26)
	(= (ready-to-load goods9 market3) 0)
	(= (on-sale goods9 market3) 16)
	(= (ready-to-load goods9 depot1) 0)
	(= (ready-to-load goods9 depot2) 0)
	(= (price goods10 market1) 18)
	(= (ready-to-load goods10 market1) 0)
	(= (on-sale goods10 market1) 19)
	(= (price goods10 market2) 40)
	(= (ready-to-load goods10 market2) 0)
	(= (on-sale goods10 market2) 7)
	(= (price goods10 market3) 27)
	(= (ready-to-load goods10 market3) 0)
	(= (on-sale goods10 market3) 18)
	(= (ready-to-load goods10 depot1) 0)
	(= (ready-to-load goods10 depot2) 0)
	(= (price goods11 market1) 48)
	(= (ready-to-load goods11 market1) 0)
	(= (on-sale goods11 market1) 2)
	(= (ready-to-load goods11 market2) 0)
	(= (on-sale goods11 market2) 0)
	(= (price goods11 market3) 27)
	(= (ready-to-load goods11 market3) 0)
	(= (on-sale goods11 market3) 15)
	(= (ready-to-load goods11 depot1) 0)
	(= (ready-to-load goods11 depot2) 0)
	(= (price goods12 market1) 12)
	(= (ready-to-load goods12 market1) 0)
	(= (on-sale goods12 market1) 4)
	(= (price goods12 market2) 3)
	(= (ready-to-load goods12 market2) 0)
	(= (on-sale goods12 market2) 11)
	(= (price goods12 market3) 6)
	(= (ready-to-load goods12 market3) 0)
	(= (on-sale goods12 market3) 4)
	(= (ready-to-load goods12 depot1) 0)
	(= (ready-to-load goods12 depot2) 0)
	(= (price goods13 market1) 18)
	(= (ready-to-load goods13 market1) 0)
	(= (on-sale goods13 market1) 15)
	(= (ready-to-load goods13 market2) 0)
	(= (on-sale goods13 market2) 0)
	(= (price goods13 market3) 30)
	(= (ready-to-load goods13 market3) 0)
	(= (on-sale goods13 market3) 4)
	(= (ready-to-load goods13 depot1) 0)
	(= (ready-to-load goods13 depot2) 0)
	(connected market1 market2)
	(connected market2 market1)
	(= (drive-cost market1 market2) 644.00)
	(= (drive-cost market2 market1) 644.00)
	(= (drive-time market1 market2) 1932.00)
	(= (drive-time market2 market1) 1932.00)
	(connected market1 market3)
	(connected market3 market1)
	(= (drive-cost market1 market3) 713.00)
	(= (drive-cost market3 market1) 713.00)
	(= (drive-time market1 market3) 2139.00)
	(= (drive-time market3 market1) 2139.00)
	(connected market2 market3)
	(connected market3 market2)
	(= (drive-cost market2 market3) 155.00)
	(= (drive-cost market3 market2) 155.00)
	(= (drive-time market2 market3) 465.00)
	(= (drive-time market3 market2) 465.00)
	(connected depot1 market1)
	(connected market1 depot1)
	(= (drive-cost market1 depot1) 551.00)
	(= (drive-cost depot1 market1) 551.00)
	(= (drive-time market1 depot1) 1653.00)
	(= (drive-time depot1 market1) 1653.00)
	(connected depot1 market2)
	(connected market2 depot1)
	(= (drive-cost market2 depot1) 499.00)
	(= (drive-cost depot1 market2) 499.00)
	(= (drive-time market2 depot1) 1497.00)
	(= (drive-time depot1 market2) 1497.00)
	(connected depot1 market3)
	(connected market3 depot1)
	(= (drive-cost market3 depot1) 70.00)
	(= (drive-cost depot1 market3) 70.00)
	(= (drive-time market3 depot1) 210.00)
	(= (drive-time depot1 market3) 210.00)
	(connected depot2 market1)
	(connected market1 depot2)
	(= (drive-cost market1 depot2) 617.00)
	(= (drive-cost depot2 market1) 617.00)
	(= (drive-time market1 depot2) 1851.00)
	(= (drive-time depot2 market1) 1851.00)
	(connected depot2 market2)
	(connected market2 depot2)
	(= (drive-cost market2 depot2) 140.00)
	(= (drive-cost depot2 market2) 140.00)
	(= (drive-time market2 depot2) 420.00)
	(= (drive-time depot2 market2) 420.00)
	(connected depot2 market3)
	(connected market3 depot2)
	(= (drive-cost market3 depot2) 52.00)
	(= (drive-cost depot2 market3) 52.00)
	(= (drive-time market3 depot2) 156.00)
	(= (drive-time depot2 market3) 156.00)
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
	(at truck1 depot1)
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
	(at truck2 depot1)
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
	(at truck3 depot2)
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
	(= (total-cost) 0)
	(= (rebate-rate market1) 0.85)
	(= (rebate-rate market2) 0.85)
	(= (rebate-rate market3) 0.88)
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
	(= (request goods1) 29)
	(= (request goods2) 6)
	(= (request goods3) 5)
	(= (request goods4) 28)
	(= (request goods5) 8)
	(= (request goods6) 1)
	(= (request goods7) 6)
	(= (request goods8) 13)
	(= (request goods9) 1)
	(= (request goods10) 29)
	(= (request goods11) 3)
	(= (request goods12) 16)
	(= (request goods13) 2))

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
	(>= (stored goods13) (request goods13))))

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

	(preference p0A (always (>= (stored goods13) (stored goods6))))

	(forall (?t - truck)
	   (preference p4A (always-within 1927.00 (> (loaded goods1 ?t) 0)
			      (= (loaded goods1 ?t) 0))))

	(forall (?t - truck)
	   (preference p4B (always-within 1927.00 (> (loaded goods5 ?t) 0)
			      (= (loaded goods5 ?t) 0))))

	(forall (?t - truck)
	   (preference p4C (always-within 475.00 (> (loaded goods7 ?t) 0)
			      (= (loaded goods7 ?t) 0))))

	(forall (?t - truck)
	   (preference p4D (always-within 445.00 (> (loaded goods11 ?t) 0)
			      (= (loaded goods11 ?t) 0))))

	(forall (?t - truck)
	   (preference p3A (sometime (exists (?g - goods) (> (loaded ?g ?t) 0)))))

	(preference p0B (sometime-before (> (stored goods9) 0)
			   (>= (stored goods4) (request goods4))))
	(preference p0C (sometime-before (> (stored goods10) 0)
			   (>= (stored goods2) (request goods2))))
	(preference p0D (sometime-before (> (stored goods11) 0)
			   (>= (stored goods1) (request goods1))))
	(preference p0E (sometime-before (> (stored goods12) 0)
			   (>= (stored goods5) (request goods5))))
	(preference p0F (sometime-before (> (stored goods8) 0)
			   (>= (stored goods7) (request goods7))))))

(:metric minimize (+ (* 1 (is-violated p0A))
		     (* 1 (is-violated p0B))
		     (* 1 (is-violated p0C))
		     (* 1 (is-violated p0D))
		     (* 1 (is-violated p0E))
		     (* 1 (is-violated p0F))
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