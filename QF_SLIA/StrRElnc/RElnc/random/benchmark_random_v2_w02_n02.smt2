(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "85")))

(assert (str.in_re x (re.+ (re.union (re.+ (re.range "2" "5")) (re.range "2" "9")))))
(assert (str.in_re y (re.+ (re.range "7" "9"))))

(assert (>= (+ (* 7 (str.len y)) (* 2 (str.to_int x))) 87))

(check-sat)