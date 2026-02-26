(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ y z "77")))

(assert (str.in_re x (re.union (re.range "5" "8") (re.++ (re.range "4" "8") (re.+ (re.range "5" "7"))))))
(assert (str.in_re y (re.* (re.union (re.* (str.to_re "964")) (re.+ (str.to_re "77"))))))
(assert (str.in_re z (re.+ (re.++ (re.range "4" "9") (re.* (str.to_re "48"))))))

(assert (>= (+ (* 8 (str.len x)) (* (- 6) (str.len y)) (* 9 (str.len z))) 48))
(assert (< (+ (* (- 10) (str.to_int x)) (* (- 6) (str.to_int y)) (* (- 10) (str.to_int z))) 59))
(assert (> (+ (* (- 3) (str.to_int x)) (* 9 (str.to_int y)) (* (- 3) (str.to_int z))) 58))

(check-sat)