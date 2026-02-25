(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "54")))

(assert (str.in_re x (re.union (re.+ (re.* (str.to_re "819"))) (re.+ (re.range "6" "8")))))
(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "654"))) (re.* (str.to_re "38")))))

(assert (< (+ (* 4 (str.len y)) (* (- 10) (str.to_int x))) 11))
(assert (<= (+ (* 3 (str.to_int x)) (* 3 (str.to_int y))) 94))

(check-sat)