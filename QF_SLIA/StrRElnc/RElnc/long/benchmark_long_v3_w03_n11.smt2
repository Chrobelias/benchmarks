(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))

(assert (= (str.++ "54" y) (str.++ z x "45")))

(assert (str.in_re z (re.+ (re.* (re.union (str.to_re "398") (re.range "5" "8"))))))
(assert (str.in_re y (re.union (re.* (re.range "6" "9")) (re.union (str.to_re "196") (str.to_re "45")))))
(assert (str.in_re x (re.+ (str.to_re "4"))))

(assert (> (+ (* 6 (str.to_int x)) (* 3 (str.to_int y)) (* 10 (str.to_int z))) 45))
(assert (= (+ (str.len y) (* (- 4) (str.to_int x))) 69))

(check-sat)