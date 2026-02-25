(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.++ (re.union (str.to_re "10") (re.+ (str.to_re "132"))) (re.range "7" "9")))))
(assert (str.in_re x (re.+ (re.++ (re.range "6" "8") (re.+ (re.+ (str.to_re "5")))))))

(assert (= (+ (* (- 4) (str.len x)) (* 7 (str.to_int x)) (* (- 7) (str.to_int y))) 1))

(check-sat)