(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "14" x)))

(assert (str.in_re x (re.+ (str.to_re "45"))))
(assert (str.in_re y (re.+ (re.union (re.+ (str.to_re "825")) (re.range "0" "9")))))

(assert (= (+ (* 3 (str.len x)) (* 8 (str.to_int x))) 12))

(check-sat)