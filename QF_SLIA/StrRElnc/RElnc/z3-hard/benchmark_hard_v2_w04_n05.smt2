(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "61")))

(assert (str.in_re x (re.+ (re.++ (re.* (re.+ (re.range "6" "9"))) (str.to_re "1")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "17") (re.* (str.to_re "5"))))))

(assert (> (+ (* 10 (str.len x)) (* 2 (str.len y)) (* (- 10) (str.to_int x))) 87))
(assert (<= (+ (* (- 7) (str.len x)) (* 5 (str.len y)) (* (- 10) (str.to_int x))) 80))

(check-sat)