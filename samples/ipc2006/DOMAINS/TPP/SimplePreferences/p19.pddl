(define (problem TPP)
(:domain TPP-PropositionalSimplePreferences)
(:objects
	goods1 goods2 goods3 goods4 goods5 goods6 goods7 goods8 goods9 goods10 goods11 goods12 goods13 goods14 goods15 goods16 goods17 goods18 goods19 goods20 goods21 - goods
	truck1 truck2 - truck
	market1 market2 market3 market4 market5 - market
	depot1 depot2 - depot
	level1 level2 level3 level4 level5 level6 level7 - level)

(:init
	(next level1 level0)
	(next level2 level1)
	(next level3 level2)
	(next level4 level3)
	(next level5 level4)
	(next level6 level5)
	(next level7 level6)
	(ready-to-load goods1 market1 level0)
	(ready-to-load goods1 market2 level0)
	(ready-to-load goods1 market3 level0)
	(ready-to-load goods1 market4 level0)
	(ready-to-load goods1 market5 level0)
	(ready-to-load goods1 depot1 level0)
	(ready-to-load goods1 depot2 level0)
	(ready-to-load goods2 market1 level0)
	(ready-to-load goods2 market2 level0)
	(ready-to-load goods2 market3 level0)
	(ready-to-load goods2 market4 level0)
	(ready-to-load goods2 market5 level0)
	(ready-to-load goods2 depot1 level0)
	(ready-to-load goods2 depot2 level0)
	(ready-to-load goods3 market1 level0)
	(ready-to-load goods3 market2 level0)
	(ready-to-load goods3 market3 level0)
	(ready-to-load goods3 market4 level0)
	(ready-to-load goods3 market5 level0)
	(ready-to-load goods3 depot1 level0)
	(ready-to-load goods3 depot2 level0)
	(ready-to-load goods4 market1 level0)
	(ready-to-load goods4 market2 level0)
	(ready-to-load goods4 market3 level0)
	(ready-to-load goods4 market4 level0)
	(ready-to-load goods4 market5 level0)
	(ready-to-load goods4 depot1 level0)
	(ready-to-load goods4 depot2 level0)
	(ready-to-load goods5 market1 level0)
	(ready-to-load goods5 market2 level0)
	(ready-to-load goods5 market3 level0)
	(ready-to-load goods5 market4 level0)
	(ready-to-load goods5 market5 level0)
	(ready-to-load goods5 depot1 level0)
	(ready-to-load goods5 depot2 level0)
	(ready-to-load goods6 market1 level0)
	(ready-to-load goods6 market2 level0)
	(ready-to-load goods6 market3 level0)
	(ready-to-load goods6 market4 level0)
	(ready-to-load goods6 market5 level0)
	(ready-to-load goods6 depot1 level0)
	(ready-to-load goods6 depot2 level0)
	(ready-to-load goods7 market1 level0)
	(ready-to-load goods7 market2 level0)
	(ready-to-load goods7 market3 level0)
	(ready-to-load goods7 market4 level0)
	(ready-to-load goods7 market5 level0)
	(ready-to-load goods7 depot1 level0)
	(ready-to-load goods7 depot2 level0)
	(ready-to-load goods8 market1 level0)
	(ready-to-load goods8 market2 level0)
	(ready-to-load goods8 market3 level0)
	(ready-to-load goods8 market4 level0)
	(ready-to-load goods8 market5 level0)
	(ready-to-load goods8 depot1 level0)
	(ready-to-load goods8 depot2 level0)
	(ready-to-load goods9 market1 level0)
	(ready-to-load goods9 market2 level0)
	(ready-to-load goods9 market3 level0)
	(ready-to-load goods9 market4 level0)
	(ready-to-load goods9 market5 level0)
	(ready-to-load goods9 depot1 level0)
	(ready-to-load goods9 depot2 level0)
	(ready-to-load goods10 market1 level0)
	(ready-to-load goods10 market2 level0)
	(ready-to-load goods10 market3 level0)
	(ready-to-load goods10 market4 level0)
	(ready-to-load goods10 market5 level0)
	(ready-to-load goods10 depot1 level0)
	(ready-to-load goods10 depot2 level0)
	(ready-to-load goods11 market1 level0)
	(ready-to-load goods11 market2 level0)
	(ready-to-load goods11 market3 level0)
	(ready-to-load goods11 market4 level0)
	(ready-to-load goods11 market5 level0)
	(ready-to-load goods11 depot1 level0)
	(ready-to-load goods11 depot2 level0)
	(ready-to-load goods12 market1 level0)
	(ready-to-load goods12 market2 level0)
	(ready-to-load goods12 market3 level0)
	(ready-to-load goods12 market4 level0)
	(ready-to-load goods12 market5 level0)
	(ready-to-load goods12 depot1 level0)
	(ready-to-load goods12 depot2 level0)
	(ready-to-load goods13 market1 level0)
	(ready-to-load goods13 market2 level0)
	(ready-to-load goods13 market3 level0)
	(ready-to-load goods13 market4 level0)
	(ready-to-load goods13 market5 level0)
	(ready-to-load goods13 depot1 level0)
	(ready-to-load goods13 depot2 level0)
	(ready-to-load goods14 market1 level0)
	(ready-to-load goods14 market2 level0)
	(ready-to-load goods14 market3 level0)
	(ready-to-load goods14 market4 level0)
	(ready-to-load goods14 market5 level0)
	(ready-to-load goods14 depot1 level0)
	(ready-to-load goods14 depot2 level0)
	(ready-to-load goods15 market1 level0)
	(ready-to-load goods15 market2 level0)
	(ready-to-load goods15 market3 level0)
	(ready-to-load goods15 market4 level0)
	(ready-to-load goods15 market5 level0)
	(ready-to-load goods15 depot1 level0)
	(ready-to-load goods15 depot2 level0)
	(ready-to-load goods16 market1 level0)
	(ready-to-load goods16 market2 level0)
	(ready-to-load goods16 market3 level0)
	(ready-to-load goods16 market4 level0)
	(ready-to-load goods16 market5 level0)
	(ready-to-load goods16 depot1 level0)
	(ready-to-load goods16 depot2 level0)
	(ready-to-load goods17 market1 level0)
	(ready-to-load goods17 market2 level0)
	(ready-to-load goods17 market3 level0)
	(ready-to-load goods17 market4 level0)
	(ready-to-load goods17 market5 level0)
	(ready-to-load goods17 depot1 level0)
	(ready-to-load goods17 depot2 level0)
	(ready-to-load goods18 market1 level0)
	(ready-to-load goods18 market2 level0)
	(ready-to-load goods18 market3 level0)
	(ready-to-load goods18 market4 level0)
	(ready-to-load goods18 market5 level0)
	(ready-to-load goods18 depot1 level0)
	(ready-to-load goods18 depot2 level0)
	(ready-to-load goods19 market1 level0)
	(ready-to-load goods19 market2 level0)
	(ready-to-load goods19 market3 level0)
	(ready-to-load goods19 market4 level0)
	(ready-to-load goods19 market5 level0)
	(ready-to-load goods19 depot1 level0)
	(ready-to-load goods19 depot2 level0)
	(ready-to-load goods20 market1 level0)
	(ready-to-load goods20 market2 level0)
	(ready-to-load goods20 market3 level0)
	(ready-to-load goods20 market4 level0)
	(ready-to-load goods20 market5 level0)
	(ready-to-load goods20 depot1 level0)
	(ready-to-load goods20 depot2 level0)
	(ready-to-load goods21 market1 level0)
	(ready-to-load goods21 market2 level0)
	(ready-to-load goods21 market3 level0)
	(ready-to-load goods21 market4 level0)
	(ready-to-load goods21 market5 level0)
	(ready-to-load goods21 depot1 level0)
	(ready-to-load goods21 depot2 level0)
	(stored goods1 level0)
	(stored goods2 level0)
	(stored goods3 level0)
	(stored goods4 level0)
	(stored goods5 level0)
	(stored goods6 level0)
	(stored goods7 level0)
	(stored goods8 level0)
	(stored goods9 level0)
	(stored goods10 level0)
	(stored goods11 level0)
	(stored goods12 level0)
	(stored goods13 level0)
	(stored goods14 level0)
	(stored goods15 level0)
	(stored goods16 level0)
	(stored goods17 level0)
	(stored goods18 level0)
	(stored goods19 level0)
	(stored goods20 level0)
	(stored goods21 level0)
	(loaded goods1 truck1 level0)
	(loaded goods1 truck2 level0)
	(loaded goods2 truck1 level0)
	(loaded goods2 truck2 level0)
	(loaded goods3 truck1 level0)
	(loaded goods3 truck2 level0)
	(loaded goods4 truck1 level0)
	(loaded goods4 truck2 level0)
	(loaded goods5 truck1 level0)
	(loaded goods5 truck2 level0)
	(loaded goods6 truck1 level0)
	(loaded goods6 truck2 level0)
	(loaded goods7 truck1 level0)
	(loaded goods7 truck2 level0)
	(loaded goods8 truck1 level0)
	(loaded goods8 truck2 level0)
	(loaded goods9 truck1 level0)
	(loaded goods9 truck2 level0)
	(loaded goods10 truck1 level0)
	(loaded goods10 truck2 level0)
	(loaded goods11 truck1 level0)
	(loaded goods11 truck2 level0)
	(loaded goods12 truck1 level0)
	(loaded goods12 truck2 level0)
	(loaded goods13 truck1 level0)
	(loaded goods13 truck2 level0)
	(loaded goods14 truck1 level0)
	(loaded goods14 truck2 level0)
	(loaded goods15 truck1 level0)
	(loaded goods15 truck2 level0)
	(loaded goods16 truck1 level0)
	(loaded goods16 truck2 level0)
	(loaded goods17 truck1 level0)
	(loaded goods17 truck2 level0)
	(loaded goods18 truck1 level0)
	(loaded goods18 truck2 level0)
	(loaded goods19 truck1 level0)
	(loaded goods19 truck2 level0)
	(loaded goods20 truck1 level0)
	(loaded goods20 truck2 level0)
	(loaded goods21 truck1 level0)
	(loaded goods21 truck2 level0)
	(connected market1 market2)
	(connected market1 market3)
	(connected market1 market4)
	(connected market1 market5)
	(connected market2 market1)
	(connected market2 market3)
	(connected market2 market4)
	(connected market2 market5)
	(connected market3 market1)
	(connected market3 market2)
	(connected market3 market4)
	(connected market3 market5)
	(connected market4 market1)
	(connected market4 market2)
	(connected market4 market3)
	(connected market4 market5)
	(connected market5 market1)
	(connected market5 market2)
	(connected market5 market3)
	(connected market5 market4)
	(connected depot1 market1)
	(connected market1 depot1)
	(connected depot1 market2)
	(connected market2 depot1)
	(connected depot1 market3)
	(connected market3 depot1)
	(connected depot1 market4)
	(connected market4 depot1)
	(connected depot1 market5)
	(connected market5 depot1)
	(connected depot2 market1)
	(connected market1 depot2)
	(connected depot2 market2)
	(connected market2 depot2)
	(connected depot2 market3)
	(connected market3 depot2)
	(connected depot2 market4)
	(connected market4 depot2)
	(connected depot2 market5)
	(connected market5 depot2)
	(on-sale goods1 market1 level0)
	(on-sale goods2 market1 level4)
	(on-sale goods3 market1 level1)
	(on-sale goods4 market1 level0)
	(on-sale goods5 market1 level3)
	(on-sale goods6 market1 level0)
	(on-sale goods7 market1 level0)
	(on-sale goods8 market1 level1)
	(on-sale goods9 market1 level0)
	(on-sale goods10 market1 level1)
	(on-sale goods11 market1 level0)
	(on-sale goods12 market1 level2)
	(on-sale goods13 market1 level4)
	(on-sale goods14 market1 level1)
	(on-sale goods15 market1 level1)
	(on-sale goods16 market1 level3)
	(on-sale goods17 market1 level0)
	(on-sale goods18 market1 level1)
	(on-sale goods19 market1 level0)
	(on-sale goods20 market1 level1)
	(on-sale goods21 market1 level0)
	(on-sale goods1 market2 level0)
	(on-sale goods2 market2 level1)
	(on-sale goods3 market2 level1)
	(on-sale goods4 market2 level0)
	(on-sale goods5 market2 level3)
	(on-sale goods6 market2 level4)
	(on-sale goods7 market2 level0)
	(on-sale goods8 market2 level2)
	(on-sale goods9 market2 level2)
	(on-sale goods10 market2 level4)
	(on-sale goods11 market2 level0)
	(on-sale goods12 market2 level2)
	(on-sale goods13 market2 level0)
	(on-sale goods14 market2 level0)
	(on-sale goods15 market2 level0)
	(on-sale goods16 market2 level1)
	(on-sale goods17 market2 level2)
	(on-sale goods18 market2 level0)
	(on-sale goods19 market2 level0)
	(on-sale goods20 market2 level2)
	(on-sale goods21 market2 level0)
	(on-sale goods1 market3 level4)
	(on-sale goods2 market3 level2)
	(on-sale goods3 market3 level2)
	(on-sale goods4 market3 level4)
	(on-sale goods5 market3 level0)
	(on-sale goods6 market3 level0)
	(on-sale goods7 market3 level4)
	(on-sale goods8 market3 level2)
	(on-sale goods9 market3 level2)
	(on-sale goods10 market3 level1)
	(on-sale goods11 market3 level4)
	(on-sale goods12 market3 level0)
	(on-sale goods13 market3 level0)
	(on-sale goods14 market3 level2)
	(on-sale goods15 market3 level3)
	(on-sale goods16 market3 level0)
	(on-sale goods17 market3 level0)
	(on-sale goods18 market3 level0)
	(on-sale goods19 market3 level0)
	(on-sale goods20 market3 level2)
	(on-sale goods21 market3 level0)
	(on-sale goods1 market4 level2)
	(on-sale goods2 market4 level0)
	(on-sale goods3 market4 level3)
	(on-sale goods4 market4 level3)
	(on-sale goods5 market4 level1)
	(on-sale goods6 market4 level3)
	(on-sale goods7 market4 level2)
	(on-sale goods8 market4 level2)
	(on-sale goods9 market4 level3)
	(on-sale goods10 market4 level1)
	(on-sale goods11 market4 level3)
	(on-sale goods12 market4 level1)
	(on-sale goods13 market4 level3)
	(on-sale goods14 market4 level4)
	(on-sale goods15 market4 level3)
	(on-sale goods16 market4 level3)
	(on-sale goods17 market4 level1)
	(on-sale goods18 market4 level3)
	(on-sale goods19 market4 level4)
	(on-sale goods20 market4 level1)
	(on-sale goods21 market4 level1)
	(on-sale goods1 market5 level1)
	(on-sale goods2 market5 level0)
	(on-sale goods3 market5 level0)
	(on-sale goods4 market5 level0)
	(on-sale goods5 market5 level0)
	(on-sale goods6 market5 level0)
	(on-sale goods7 market5 level0)
	(on-sale goods8 market5 level0)
	(on-sale goods9 market5 level0)
	(on-sale goods10 market5 level0)
	(on-sale goods11 market5 level0)
	(on-sale goods12 market5 level2)
	(on-sale goods13 market5 level0)
	(on-sale goods14 market5 level0)
	(on-sale goods15 market5 level0)
	(on-sale goods16 market5 level0)
	(on-sale goods17 market5 level0)
	(on-sale goods18 market5 level2)
	(on-sale goods19 market5 level3)
	(on-sale goods20 market5 level1)
	(on-sale goods21 market5 level0)
	(at truck1 depot1)
	(at truck2 depot2))

(:goal (and
	(forall (?g - goods) (preference p0A (stored ?g level1)))
	(forall (?g - goods) (preference p1A (stored ?g level2)))
	(forall (?g - goods) (preference p2A (stored ?g level3)))
	(forall (?g - goods) (preference p3A (stored ?g level4)))
	(forall (?g - goods) (preference p4A (stored ?g level5)))
	(forall (?g - goods) (preference p5A (stored ?g level6)))
	(forall (?g - goods) (preference p6A (stored ?g level7)))

	(preference p7A (imply (stored goods8 level1) (stored goods12 level2)))
	(preference p7B (imply (stored goods8 level2) (stored goods12 level4)))
	(preference p7C (imply (stored goods8 level3) (stored goods12 level6)))
	(preference p7D (not (stored goods8 level4)))
	(preference p7E (not (stored goods8 level5)))
	(preference p7F (not (stored goods8 level6)))
	(preference p7G (not (stored goods8 level7)))

	(forall (?l - level)
	   (preference p7H (imply (stored goods20 ?l) (stored goods21 ?l))))

	(forall (?l - level)
	   (preference p7I (imply (stored goods9 ?l) (stored goods14 ?l))))

	(preference p7J (imply (stored goods13 level1) (stored goods20 level2)))
	(preference p7K (imply (stored goods13 level2) (stored goods20 level4)))
	(preference p7L (imply (stored goods13 level3) (stored goods20 level6)))
	(preference p7M (not (stored goods13 level4)))
	(preference p7N (not (stored goods13 level5)))
	(preference p7O (not (stored goods13 level6)))
	(preference p7P (not (stored goods13 level7)))

	(forall (?l - level)
	   (preference p7Q (imply (stored goods4 ?l) (stored goods19 ?l))))

	(forall (?l - level)
	   (preference p7R (imply (stored goods3 ?l) (stored goods13 ?l))))

	(preference p7S (imply (stored goods15 level1) (stored goods20 level2)))
	(preference p7T (imply (stored goods15 level2) (stored goods20 level4)))
	(preference p7U (imply (stored goods15 level3) (stored goods20 level6)))
	(preference p7V (not (stored goods15 level4)))
	(preference p7W (not (stored goods15 level5)))
	(preference p7X (not (stored goods15 level6)))
	(preference p7Y (not (stored goods15 level7)))

	(forall (?g - goods)
	   (preference p8A
	      (and (forall (?m - market) (ready-to-load ?g ?m level0))
		   (forall (?t - truck) (loaded ?g ?t level0)))))))


(:metric minimize (+ (* 1 (is-violated p0A))
		     (* 2 (is-violated p1A))
		     (* 4 (is-violated p2A))
		     (* 8 (is-violated p3A))
		     (* 16 (is-violated p4A))
		     (* 32 (is-violated p5A))
		     (* 64 (is-violated p6A))
		     (* 128 (is-violated p7A))
		     (* 128 (is-violated p7B))
		     (* 128 (is-violated p7C))
		     (* 128 (is-violated p7D))
		     (* 128 (is-violated p7E))
		     (* 128 (is-violated p7F))
		     (* 128 (is-violated p7G))
		     (* 128 (is-violated p7H))
		     (* 128 (is-violated p7I))
		     (* 128 (is-violated p7J))
		     (* 128 (is-violated p7K))
		     (* 128 (is-violated p7L))
		     (* 128 (is-violated p7M))
		     (* 128 (is-violated p7N))
		     (* 128 (is-violated p7O))
		     (* 128 (is-violated p7P))
		     (* 128 (is-violated p7Q))
		     (* 128 (is-violated p7R))
		     (* 128 (is-violated p7S))
		     (* 128 (is-violated p7T))
		     (* 128 (is-violated p7U))
		     (* 128 (is-violated p7V))
		     (* 128 (is-violated p7W))
		     (* 128 (is-violated p7X))
		     (* 128 (is-violated p7Y))
		     (* 256 (is-violated p8A))
		     (* 1 (is-violated p-drive))))
)
