(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.+ (re.+ (re.+ (re.range "4" "6")))))))
(assert (str.in_re y (re.union (str.to_re "92") (re.++ (re.+ (str.to_re "7")) (re.* (str.to_re "172"))))))

(assert (> (+ (* (- 9) (str.len x)) (str.to_int x)) 30))

(check-sat)