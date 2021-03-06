; Map of the Depots:                                         
; 000=11 222 333 44 555 66               
; 0*  *1 *2  3 * *4 5*  *6               
;-------------------------               
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; 3: depot3 area
; 4: depot4 area
; 5: depot5 area
; 6: depot6 area
; *: Depot access point
; =: Transit area

(define (problem storage-11)
(:domain Storage-PropositionalSimplePreferences)
(:objects
	depot0-1-1 depot0-1-2 depot0-1-3 depot0-2-1 depot0-2-2 depot1-1-1 depot1-1-2 depot1-2-1 depot1-2-2 depot2-1-1 depot2-1-2 depot2-1-3 depot2-2-1 depot2-2-2 depot3-1-1 depot3-1-2 depot3-1-3 depot3-2-1 depot3-2-3 depot4-1-1 depot4-1-2 depot4-2-1 depot4-2-2 depot5-1-1 depot5-1-2 depot5-1-3 depot5-2-1 depot5-2-2 depot6-1-1 depot6-1-2 depot6-2-1 depot6-2-2 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 container-1-2 container-1-3 container-2-0 container-2-1 container-2-2 - storearea
	hoist0 hoist1 hoist2 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 - crate
	container0 container1 container2 - container
	depot0 depot1 depot2 depot3 depot4 depot5 depot6 - depot
	loadarea transit0 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-2-2)
	(connected depot0-1-2 depot0-1-3)
	(connected depot0-1-2 depot0-1-1)
	(connected depot0-1-3 depot0-1-2)
	(connected depot0-2-1 depot0-1-1)
	(connected depot0-2-1 depot0-2-2)
	(connected depot0-2-2 depot0-1-2)
	(connected depot0-2-2 depot0-2-1)
	(connected depot1-1-1 depot1-2-1)
	(connected depot1-1-1 depot1-1-2)
	(connected depot1-1-2 depot1-2-2)
	(connected depot1-1-2 depot1-1-1)
	(connected depot1-2-1 depot1-1-1)
	(connected depot1-2-1 depot1-2-2)
	(connected depot1-2-2 depot1-1-2)
	(connected depot1-2-2 depot1-2-1)
	(connected depot2-1-1 depot2-2-1)
	(connected depot2-1-1 depot2-1-2)
	(connected depot2-1-2 depot2-2-2)
	(connected depot2-1-2 depot2-1-3)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-1-3 depot2-1-2)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-1)
	(connected depot3-1-1 depot3-2-1)
	(connected depot3-1-1 depot3-1-2)
	(connected depot3-1-2 depot3-1-3)
	(connected depot3-1-2 depot3-1-1)
	(connected depot3-1-3 depot3-2-3)
	(connected depot3-1-3 depot3-1-2)
	(connected depot3-2-1 depot3-1-1)
	(connected depot3-2-3 depot3-1-3)
	(connected depot4-1-1 depot4-2-1)
	(connected depot4-1-1 depot4-1-2)
	(connected depot4-1-2 depot4-2-2)
	(connected depot4-1-2 depot4-1-1)
	(connected depot4-2-1 depot4-1-1)
	(connected depot4-2-1 depot4-2-2)
	(connected depot4-2-2 depot4-1-2)
	(connected depot4-2-2 depot4-2-1)
	(connected depot5-1-1 depot5-2-1)
	(connected depot5-1-1 depot5-1-2)
	(connected depot5-1-2 depot5-2-2)
	(connected depot5-1-2 depot5-1-3)
	(connected depot5-1-2 depot5-1-1)
	(connected depot5-1-3 depot5-1-2)
	(connected depot5-2-1 depot5-1-1)
	(connected depot5-2-1 depot5-2-2)
	(connected depot5-2-2 depot5-1-2)
	(connected depot5-2-2 depot5-2-1)
	(connected depot6-1-1 depot6-2-1)
	(connected depot6-1-1 depot6-1-2)
	(connected depot6-1-2 depot6-2-2)
	(connected depot6-1-2 depot6-1-1)
	(connected depot6-2-1 depot6-1-1)
	(connected depot6-2-1 depot6-2-2)
	(connected depot6-2-2 depot6-1-2)
	(connected depot6-2-2 depot6-2-1)
	(connected transit0 depot0-1-3)
	(connected transit0 depot1-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-1-3 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-2 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-2 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-1-3 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot3-1-1 depot3)
	(in depot3-1-2 depot3)
	(in depot3-1-3 depot3)
	(in depot3-2-1 depot3)
	(in depot3-2-3 depot3)
	(in depot4-1-1 depot4)
	(in depot4-1-2 depot4)
	(in depot4-2-1 depot4)
	(in depot4-2-2 depot4)
	(in depot5-1-1 depot5)
	(in depot5-1-2 depot5)
	(in depot5-1-3 depot5)
	(in depot5-2-1 depot5)
	(in depot5-2-2 depot5)
	(in depot6-1-1 depot6)
	(in depot6-1-2 depot6)
	(in depot6-2-1 depot6)
	(in depot6-2-2 depot6)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(on crate5 container-1-1)
	(on crate6 container-1-2)
	(on crate7 container-1-3)
	(on crate8 container-2-0)
	(on crate9 container-2-1)
	(on crate10 container-2-2)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in crate5 container1)
	(in crate6 container1)
	(in crate7 container1)
	(in crate8 container2)
	(in crate9 container2)
	(in crate10 container2)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
	(in container-1-1 container1)
	(in container-1-2 container1)
	(in container-1-3 container1)
	(in container-2-0 container2)
	(in container-2-1 container2)
	(in container-2-2 container2)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)
	(connected loadarea container-0-3) 
	(connected container-0-3 loadarea)
	(connected loadarea container-1-0) 
	(connected container-1-0 loadarea)
	(connected loadarea container-1-1) 
	(connected container-1-1 loadarea)
	(connected loadarea container-1-2) 
	(connected container-1-2 loadarea)
	(connected loadarea container-1-3) 
	(connected container-1-3 loadarea)
	(connected loadarea container-2-0) 
	(connected container-2-0 loadarea)
	(connected loadarea container-2-1) 
	(connected container-2-1 loadarea)
	(connected loadarea container-2-2) 
	(connected container-2-2 loadarea)  
	(connected depot0-2-2 loadarea)
	(connected loadarea depot0-2-2)
	(connected depot1-2-1 loadarea)
	(connected loadarea depot1-2-1)
	(connected depot2-2-1 loadarea)
	(connected loadarea depot2-2-1)
	(connected depot3-2-3 loadarea)
	(connected loadarea depot3-2-3)
	(connected depot4-2-1 loadarea)
	(connected loadarea depot4-2-1)
	(connected depot5-2-2 loadarea)
	(connected loadarea depot5-2-2)
	(connected depot6-2-1 loadarea)
	(connected loadarea depot6-2-1)  
	(clear depot0-1-1)
	(clear depot0-1-2)
	(clear depot0-1-3)
	(clear depot0-2-1)
	(clear depot0-2-2)
	(clear depot1-1-1)
	(clear depot1-2-2)
	(clear depot1-2-1)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-1-3)
	(clear depot2-2-1)
	(clear depot2-2-2)
	(clear depot3-1-1)
	(clear depot3-2-3)
	(clear depot3-1-3)
	(clear depot3-2-1)
	(clear depot4-1-1)
	(clear depot4-1-2)
	(clear depot4-2-2)
	(clear depot5-1-1)
	(clear depot5-1-2)
	(clear depot5-1-3)
	(clear depot5-2-1)
	(clear depot5-2-2)
	(clear depot6-1-1)
	(clear depot6-1-2)
	(clear depot6-2-1)
	(clear depot6-2-2)  
	(at hoist0 depot1-1-2)
	(available hoist0)
	(at hoist1 depot3-1-2)
	(available hoist1)
	(at hoist2 depot4-2-1)
	(available hoist2)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate0 crate3)
	(compatible crate3 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1)
	(compatible crate1 crate3)
	(compatible crate3 crate1)
	(compatible crate2 crate3)
	(compatible crate3 crate2)
	(compatible crate4 crate5)
	(compatible crate5 crate4)
	(compatible crate4 crate6)
	(compatible crate6 crate4)
	(compatible crate4 crate7)
	(compatible crate7 crate4)
	(compatible crate5 crate6)
	(compatible crate6 crate5)
	(compatible crate5 crate7)
	(compatible crate7 crate5)
	(compatible crate6 crate7)
	(compatible crate7 crate6)
	(compatible crate8 crate9)
	(compatible crate9 crate8)
	(compatible crate8 crate10)
	(compatible crate10 crate8)
	(compatible crate9 crate10)
	(compatible crate10 crate9))

(:goal (and
	(preference p3A (clear depot0-2-2))
	(preference p1A (clear depot0-1-2))
	(preference p1B (clear depot0-2-1))
	(preference p3B (clear depot1-2-1))
	(preference p1C (clear depot1-1-1))
	(preference p1D (clear depot1-2-2))
	(preference p4A (clear depot2-2-1))
	(preference p2A (clear depot2-1-1))
	(preference p2B (clear depot2-2-2))
	(preference p1E (clear depot2-1-2))
	(preference p5A (clear depot3-2-3))
	(preference p3C (clear depot3-1-3))
	(preference p2C (clear depot3-1-2))
	(preference p1F (clear depot3-1-1))
	(preference p3D (clear depot4-2-1))
	(preference p1G (clear depot4-1-1))
	(preference p1H (clear depot4-2-2))
	(preference p3E (clear depot5-2-2))
	(preference p1I (clear depot5-1-2))
	(preference p1J (clear depot5-2-1))
	(preference p3F (clear depot6-2-1))
	(preference p1K (clear depot6-1-1))
	(preference p1L (clear depot6-2-2))

	(forall (?c - crate)
	   (preference p6A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot1))))))
	(forall (?c - crate)
	   (preference p10A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot2))))))
	(forall (?c - crate)
	   (preference p15A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot3))))))
	(forall (?c - crate)
	   (preference p21A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot4))))))
	(forall (?c - crate)
	   (preference p25A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot5))))))
	(forall (?c - crate)
	   (preference p29A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot6))))))

	(forall (?h - hoist)
	   (preference p6B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot1))))))
	(forall (?h - hoist)
	   (preference p10B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot2))))))
	(forall (?h - hoist)
	   (preference p15B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot3))))))
	(forall (?h - hoist)
	   (preference p21B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot4))))))
	(forall (?h - hoist)
	   (preference p25B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot5))))))
	(forall (?h - hoist)
	   (preference p29B (exists (?s - storearea ?d - depot)
			      (and (at ?h ?s) (in ?s ?d) (not (= ?d depot6))))))

	(forall (?c1 ?c2 - crate ?d - depot)
	   (preference p8A (imply (and (in ?c1 ?d) (in ?c2 ?d) (not (= ?c1 ?c2)))
			          (compatible ?c1 ?c2))))

	(forall (?c1 ?c2 - crate ?s1 ?s2 - storearea)
	   (preference p15C (imply (and (on ?c1 ?s1) (on ?c2 ?s2)
			               (not (= ?c1 ?c2)) (connected ?s1 ?s2))
			          (compatible ?c1 ?c2))))

	(forall (?d - depot ?s - storearea ?h - hoist)
	   (preference p30A (imply (and (at ?h ?s) (in ?s ?d))
				  (forall (?c - crate) (not (in ?c ?d))))))))

(:metric minimize (+ (* 1 (is-violated p1A))
		     (* 1 (is-violated p1B))
		     (* 1 (is-violated p1C))
		     (* 1 (is-violated p1D))
		     (* 1 (is-violated p1E))
		     (* 1 (is-violated p1F))
		     (* 1 (is-violated p1G))
		     (* 1 (is-violated p1H))
		     (* 1 (is-violated p1I))
		     (* 1 (is-violated p1J))
		     (* 1 (is-violated p1K))
		     (* 1 (is-violated p1L))
		     (* 2 (is-violated p2A))
		     (* 2 (is-violated p2B))
		     (* 2 (is-violated p2C))
		     (* 3 (is-violated p3A))
		     (* 3 (is-violated p3B))
		     (* 3 (is-violated p3C))
		     (* 3 (is-violated p3D))
		     (* 3 (is-violated p3E))
		     (* 3 (is-violated p3F))
		     (* 4 (is-violated p4A))
		     (* 5 (is-violated p5A))
		     (* 6 (is-violated p6A))
		     (* 6 (is-violated p6B))
		     (* 8 (is-violated p8A))
		     (* 10 (is-violated p10A))
		     (* 10 (is-violated p10B))
		     (* 15 (is-violated p15A))
		     (* 15 (is-violated p15B))
		     (* 15 (is-violated p15C))
		     (* 21 (is-violated p21A))
		     (* 21 (is-violated p21B))
		     (* 25 (is-violated p25A))
		     (* 25 (is-violated p25B))
		     (* 29 (is-violated p29A))
		     (* 29 (is-violated p29B))
		     (* 30 (is-violated p30A))))
)
