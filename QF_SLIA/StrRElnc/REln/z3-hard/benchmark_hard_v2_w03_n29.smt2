(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.range "4" "8") (re.++ (str.to_re "98") (re.* (re.range "1" "7"))))))
(assert (str.in_re y (re.union (re.+ (re.+ (str.to_re "751"))) (re.range "1" "5"))))

(assert (<= (+ (str.len x) (* (- 4) (str.to_int x)) (str.to_int y)) 42))
(assert (> (+ (* (- 6) (str.to_int x)) (* 4 (str.to_int y))) 83))

(check-sat)