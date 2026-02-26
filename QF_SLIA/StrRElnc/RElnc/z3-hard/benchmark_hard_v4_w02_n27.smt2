(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= y (str.++ "39" z a x)))

(assert (str.in_re z (re.union (re.+ (re.range "7" "9")) (re.* (str.to_re "51")))))
(assert (str.in_re x (re.* (re.* (str.to_re "6")))))
(assert (str.in_re a (re.+ (re.union (str.to_re "190") (re.++ (str.to_re "4") (re.range "1" "4"))))))
(assert (str.in_re y (re.+ (re.union (re.range "2" "9") (str.to_re "8")))))

(assert (<= (+ (* (- 9) (str.len x)) (* 8 (str.len y)) (* 8 (str.len z)) (* 7 (str.len a))) 24))
(assert (>= (+ (* (- 3) (str.to_int x)) (* 5 (str.to_int y)) (* (- 9) (str.to_int z)) (* (- 10) (str.to_int a))) 10))

(check-sat)