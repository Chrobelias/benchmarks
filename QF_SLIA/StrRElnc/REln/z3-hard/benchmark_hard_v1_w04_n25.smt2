(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "37") (re.* (re.range "6" "8"))) (str.to_re "965"))))

(assert (>= (* 2 (str.len x)) 96))
(assert (< (* 3 (str.to_int x)) 100))
(assert (<= (+ (- (str.len x)) (* 7 (str.to_int x))) 46))

(check-sat)