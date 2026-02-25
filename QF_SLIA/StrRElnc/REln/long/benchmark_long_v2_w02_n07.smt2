(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.++ (str.to_re "878") (re.+ (re.++ (re.+ (re.range "3" "8")) (str.to_re "4"))))))
(assert (str.in_re x (re.* (re.range "6" "8"))))

(assert (<= (+ (str.len x) (* 8 (str.to_int y))) 60))

(check-sat)