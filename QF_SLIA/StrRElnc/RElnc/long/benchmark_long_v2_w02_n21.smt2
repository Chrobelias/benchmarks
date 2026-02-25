(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ "43" x)))

(assert (str.in_re x (re.union (re.range "3" "8") (re.++ (re.+ (str.to_re "4")) (re.+ (str.to_re "786"))))))
(assert (str.in_re y (re.* (re.* (re.+ (re.* (re.range "3" "5")))))))

(assert (<= (+ (* (- 7) (str.len y)) (* (- 5) (str.to_int y))) 100))

(check-sat)