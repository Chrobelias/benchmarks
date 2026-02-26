(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ z "61")))

(assert (str.in_re z (re.union (re.union (str.to_re "0") (re.+ (re.range "1" "9"))) (re.+ (re.range "4" "6")))))
(assert (str.in_re y (re.++ (str.to_re "14") (re.* (re.range "6" "8")))))
(assert (str.in_re x (re.* (re.+ (re.union (str.to_re "689") (re.range "1" "5"))))))

(assert (> (+ (* (- 10) (str.len x)) (* 6 (str.to_int x)) (* 5 (str.to_int y))) 64))
(assert (> (+ (* (- 4) (str.len x)) (* 8 (str.len y))) 96))

(check-sat)