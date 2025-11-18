(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.* (re.++ (re.+ (str.to_re "22")) (re.+ (str.to_re "600"))))))
(assert (str.in_re y (re.+ (re.union (re.range "5" "8") (re.+ (str.to_re "9"))))))
(assert (str.in_re z (re.union (re.+ (re.+ (str.to_re "926"))) (re.+ (str.to_re "79")))))

(assert (= (+ (* 3 (str.len x)) (* 10 (str.len y)) (* (- 4) (str.len z))) 55))
(assert (< (+ (* 10 (str.to_int x)) (* 2 (str.to_int y)) (* 2 (str.to_int z))) 71))

(check-sat)