(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (re.+ (re.range "4" "7")) (str.to_re "72")) (str.to_re "59"))))

(assert (<= (* (- 8) (str.to_int x)) 91))
(assert (= (+ (* 2 (str.len x)) (* 2 (str.to_int x))) 80))

(check-sat)