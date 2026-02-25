(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len a) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re a (re.++ (re.+ (re.union (str.to_re "51") (re.+ (str.to_re "307")))) (re.range "7" "9"))))
(assert (str.in_re z (re.union (re.* (re.range "4" "8")) (re.range "5" "8"))))
(assert (str.in_re y (re.union (str.to_re "3") (re.+ (re.++ (str.to_re "5") (str.to_re "68"))))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "8") (re.* (str.to_re "27"))))))

(assert (>= (+ (str.to_int x) (* 6 (str.to_int y)) (* 8 (str.to_int a))) 70))
(assert (> (+ (* (- 10) (str.len x)) (* 6 (str.len y)) (* 10 (str.len z)) (* (- 5) (str.len a))) 50))

(check-sat)