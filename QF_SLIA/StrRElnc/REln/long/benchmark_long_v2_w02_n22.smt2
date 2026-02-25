(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.* (re.* (re.++ (re.* (re.range "6" "9")) (str.to_re "90"))))))
(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "7"))) (str.to_re "15"))))

(assert (<= (+ (* 7 (str.len x)) (- (str.to_int x))) 62))

(check-sat)