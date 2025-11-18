(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.++ (re.* (re.+ (str.to_re "685"))) (str.to_re "62")))))
(assert (str.in_re y (re.union (str.to_re "63") (re.++ (str.to_re "88") (re.++ (str.to_re "7") (re.* (re.range "4" "7")))))))
(assert (str.in_re z (re.* (str.to_re "5"))))

(assert (= (+ (* 3 (str.len y)) (* 10 (str.to_int y))) 84))
(assert (<= (+ (* (- 9) (str.len x)) (* (- 7) (str.len y)) (str.len z)) 81))
(assert (> (+ (* 3 (str.len z)) (* (- 2) (str.to_int y))) 46))

(check-sat)