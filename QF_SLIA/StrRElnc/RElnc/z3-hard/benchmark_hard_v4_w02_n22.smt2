(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= a (str.++ x z "47" "53" "76" y)))

(assert (str.in_re z (re.+ (re.union (re.+ (re.range "2" "5")) (re.+ (str.to_re "5"))))))
(assert (str.in_re y (re.union (re.* (str.to_re "343")) (re.range "6" "9"))))
(assert (str.in_re x (re.++ (re.* (str.to_re "0")) (re.+ (str.to_re "294")))))
(assert (str.in_re a (re.* (re.* (re.* (re.range "2" "9"))))))

(assert (<= (+ (* 4 (str.to_int x)) (* 8 (str.to_int y)) (* (- 4) (str.to_int z)) (* 10 (str.to_int a))) 58))
(assert (< (+ (* (- 6) (str.len x)) (* 10 (str.len y)) (* (- 6) (str.len z))) 69))

(check-sat)