(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (str.to_re "28") (re.+ (str.to_re "52")))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "4")) (re.++ (re.+ (str.to_re "498")) (str.to_re "6")))))
(assert (str.in_re z (re.+ (re.* (re.+ (str.to_re "37"))))))

(assert (= (+ (* (- 8) (str.to_int x)) (* 6 (str.to_int z))) 42))
(assert (< (+ (* (- 9) (str.len y)) (* 2 (str.len z))) 16))

(check-sat)