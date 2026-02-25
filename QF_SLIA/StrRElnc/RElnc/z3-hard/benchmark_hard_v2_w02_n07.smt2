(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "16" x)))

(assert (str.in_re x (re.union (str.to_re "708") (re.++ (re.* (re.+ (str.to_re "20"))) (str.to_re "146")))))
(assert (str.in_re y (re.union (str.to_re "79") (re.* (re.+ (re.range "1" "8"))))))

(assert (<= (+ (* 8 (str.len y)) (* 8 (str.to_int x))) 70))

(check-sat)