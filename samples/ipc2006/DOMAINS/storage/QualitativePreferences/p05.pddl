; Map of the Depots:                      
; 00=11 22 33         
; 0* *1 2* *3         
;------------         
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; 3: depot3 area
; *: Depot access point
; =: Transit area

(define (problem storage-5)
(:domain Storage-PropositionalPreferences)
(:objects
	depot0-1-1 depot0-1-2 depot0-2-1 depot0-2-2 depot1-1-1 depot1-1-2 depot1-2-1 depot1-2-2 depot2-1-1 depot2-1-2 depot2-2-1 depot2-2-2 depot3-1-1 depot3-1-2 depot3-2-1 depot3-2-2 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 - storearea
	hoist0 hoist1 - hoist
	crate0 crate1 crate2 crate3 crate4 - crate
	container0 container1 - container
	depot0 depot1 depot2 depot3 - depot
	loadarea transit0 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-2-2)
	(connected depot0-1-2 depot0-1-1)
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
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-1)
	(connected depot3-1-1 depot3-2-1)
	(connected depot3-1-1 depot3-1-2)
	(connected depot3-1-2 depot3-2-2)
	(connected depot3-1-2 depot3-1-1)
	(connected depot3-2-1 depot3-1-1)
	(connected depot3-2-1 depot3-2-2)
	(connected depot3-2-2 depot3-1-2)
	(connected depot3-2-2 depot3-2-1)
	(connected transit0 depot0-1-2)
	(connected transit0 depot1-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-2 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-2 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot3-1-1 depot3)
	(in depot3-1-2 depot3)
	(in depot3-2-1 depot3)
	(in depot3-2-2 depot3)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
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
	(connected depot0-2-2 loadarea)
	(connected loadarea depot0-2-2)
	(connected depot1-2-1 loadarea)
	(connected loadarea depot1-2-1)
	(connected depot2-2-2 loadarea)
	(connected loadarea depot2-2-2)
	(connected depot3-2-1 loadarea)
	(connected loadarea depot3-2-1)  
	(clear depot0-1-1)
	(clear depot0-1-2)
	(clear depot0-2-1)
	(clear depot0-2-2)
	(clear depot1-1-1)
	(clear depot1-2-2)
	(clear depot1-2-1)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-2-1)
	(clear depot2-2-2)
	(clear depot3-1-1)
	(clear depot3-1-2)
	(clear depot3-2-1)  
	(at hoist0 depot1-1-2)
	(available hoist0)
	(at hoist1 depot3-2-2)
	(available hoist1)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1)
	(compatible crate3 crate4)
	(compatible crate4 crate3))

(:goal (and
	(preference p3A (clear depot0-2-2))
	(preference p1A (clear depot0-1-2))
	(preference p1B (clear depot0-2-1))
	(preference p3B (clear depot1-2-1))
	(preference p1C (clear depot1-1-1))
	(preference p1D (clear depot1-2-2))
	(preference p3C (clear depot2-2-2))
	(preference p1E (clear depot2-1-2))
	(preference p1F (clear depot2-2-1))
	(preference p3D (clear depot3-2-1))
	(preference p1G (clear depot3-1-1))
	(preference p1H (clear depot3-2-2))

	(forall (?c - crate)
	   (preference p7A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot1))))))
	(forall (?c - crate)
	   (preference p11A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot2))))))
	(forall (?c - crate)
	   (preference p15A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot3))))))))

(:constraints (and
	(forall (?c1 ?c2 - crate ?s1 ?s2 - storearea)
	   (preference p8A (always (imply (and (on ?c1 ?s1) (on ?c2 ?s2)
					        (not (= ?c1 ?c2)) (connected ?s1 ?s2))
					   (compatible ?c1 ?c2)))))

	(forall (?c1 ?c2 - crate ?d - depot)
	   (preference p4A (always (imply (and (in ?c1 ?d) (in ?c2 ?d) (not (= ?c1 ?c2)))
					  (compatible ?c1 ?c2)))))

	(forall (?c - crate)
	   (preference p5A (at-most-once (exists (?h - hoist) (lifting ?h ?c)))))

	(forall (?h - hoist)
	   (preference p6A (sometime (exists (?c - crate) (lifting ?h ?c)))))

	(preference p4B (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate1 ?d2))))
	(preference p4C (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate2 ?d2))))
	(preference p4D (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate3 ?d2))))
	(preference p4E (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate4 ?d2))))))

(:metric minimize (+ (* 1 (is-violated p1A))
		     (* 1 (is-violated p1B))
		     (* 1 (is-violated p1C))
		     (* 1 (is-violated p1D))
		     (* 1 (is-violated p1E))
		     (* 1 (is-violated p1F))
		     (* 1 (is-violated p1G))
		     (* 1 (is-violated p1H))
		     (* 3 (is-violated p3A))
		     (* 3 (is-violated p3B))
		     (* 3 (is-violated p3C))
		     (* 3 (is-violated p3D))
		     (* 4 (is-violated p4A))
		     (* 4 (is-violated p4B))
		     (* 4 (is-violated p4C))
		     (* 4 (is-violated p4D))
		     (* 4 (is-violated p4E))
		     (* 5 (is-violated p5A))
		     (* 6 (is-violated p6A))
		     (* 7 (is-violated p7A))
		     (* 8 (is-violated p8A))
		     (* 11 (is-violated p11A))
		     (* 15 (is-violated p15A))))
)
