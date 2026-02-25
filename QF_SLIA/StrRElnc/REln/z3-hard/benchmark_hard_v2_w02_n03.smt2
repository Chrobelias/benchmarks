(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.union (re.range "7" "9") (re.+ (re.range "5" "8"))) (re.+ (str.to_re "3")))))
(assert (str.in_re y (re.++ (re.* (re.* (re.range "5" "8"))) (str.to_re "8"))))

(assert (= (+ (* (- 3) (str.len y)) (* 4 (str.to_int x))) 68))

(check-sat)