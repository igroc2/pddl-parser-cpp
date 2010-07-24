; Map of the Depots:               
; 0*0=*11 22   
;         2*   
;-----------   
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; *: Depot access point
; =: Transit area

(define (problem storage-3)
(:domain Storage-TimePreferences)
(:objects
	depot0-1-1 depot0-1-2 depot0-1-3 depot1-1-1 depot1-1-2 depot1-1-3 depot2-1-1 depot2-1-2 depot2-2-1 depot2-2-2 container-0-0 container-0-1 container-0-2 - storearea
	hoist0 - hoist
	crate0 crate1 crate2 - crate
	container0 - container
	depot0 depot1 depot2 - depot
	loadarea transit0 - transitarea)

(:init
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-1-3)
	(connected depot0-1-2 depot0-1-1)
	(connected depot0-1-3 depot0-1-2)
	(connected depot1-1-1 depot1-1-2)
	(connected depot1-1-2 depot1-1-3)
	(connected depot1-1-2 depot1-1-1)
	(connected depot1-1-3 depot1-1-2)
	(connected depot2-1-1 depot2-2-1)
	(connected depot2-1-1 depot2-1-2)
	(connected depot2-1-2 depot2-2-2)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-1)
	(connected transit0 depot0-1-3)
	(connected transit0 depot1-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-1-3 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-1-3 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)  
	(connected depot0-1-2 loadarea)
	(connected loadarea depot0-1-2)
	(connected depot1-1-1 loadarea)
	(connected loadarea depot1-1-1)
	(connected depot2-2-2 loadarea)
	(connected loadarea depot2-2-2)  
	(clear depot0-1-3)
	(clear depot0-1-2)
	(clear depot1-1-1)
	(clear depot1-1-2)
	(clear depot1-1-3)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-2-1)
	(clear depot2-2-2)  
	(at hoist0 depot0-1-1)
	(available hoist0)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1))

(:goal (and
	(preference p2A (clear depot0-1-2))
	(preference p3A (clear depot1-1-1))
	(preference p1A (clear depot1-1-2))
	(preference p3B (clear depot2-2-2))
	(preference p1B (clear depot2-1-2))
	(preference p1C (clear depot2-2-1))

	(forall (?c - crate)
	   (preference p7A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot1))))))
	(forall (?c - crate)
	   (preference p11A (exists (?d - depot) (and (in ?c ?d) (not (= ?d depot2))))))))

(:constraints (and
	(forall (?c1 ?c2 - crate ?s1 ?s2 - storearea)
	   (preference p6A (always (imply (and (on ?c1 ?s1) (on ?c2 ?s2)
					        (not (= ?c1 ?c2)) (connected ?s1 ?s2))
					   (compatible ?c1 ?c2)))))

	(forall (?c1 ?c2 - crate ?d - depot)
	   (preference p4A (always (imply (and (in ?c1 ?d) (in ?c2 ?d) (not (= ?c1 ?c2)))
					  (compatible ?c1 ?c2)))))

	(forall (?c - crate)
	   (preference p5A (at-most-once (exists (?h - hoist) (lifting ?h ?c)))))

	(forall (?h - hoist)
	   (preference p6B (sometime (exists (?c - crate) (lifting ?h ?c)))))

	(preference p4B (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate1 ?d2))))
	(preference p4C (sometime-before (exists (?d1 - depot) (in crate0 ?d1))
					 (exists (?d2 - depot) (in crate2 ?d2))))

	(forall (?c - crate)
	   (preference p5B (within 64 (exists (?d - depot) (in ?c ?d)))))

	(forall (?h - hoist)
	   (preference p4D (always-within 3.5 (at ?h loadarea)
				 (exists (?a - storearea ?d - depot) (and (at ?h ?a) (in ?a ?d))))))))

(:metric minimize (+ (* 1 (is-violated p1A))
		     (* 1 (is-violated p1B))
		     (* 1 (is-violated p1C))
		     (* 2 (is-violated p2A))
		     (* 3 (is-violated p3A))
		     (* 3 (is-violated p3B))
		     (* 4 (is-violated p4A))
		     (* 4 (is-violated p4B))
		     (* 4 (is-violated p4C))
		     (* 4 (is-violated p4D))
		     (* 5 (is-violated p5A))
		     (* 5 (is-violated p5B))
		     (* 6 (is-violated p6A))
		     (* 6 (is-violated p6B))
		     (* 7 (is-violated p7A))
		     (* 11 (is-violated p11A))))
)
