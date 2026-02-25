(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= x (str.++ y "46")))

(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "570"))) (re.+ (re.range "5" "7")))))
(assert (str.in_re x (re.union (re.* (str.to_re "4")) (re.+ (re.range "4" "6")))))

(assert (>= (+ (* (- 7) (str.len x)) (* 10 (str.len y))) 29))
(assert (<= (+ (* (- 8) (str.to_int x)) (* (- 4) (str.to_int y))) 32))

(check-sat)