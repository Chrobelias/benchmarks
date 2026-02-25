(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "98" x)))

(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "406")) (re.range "5" "8")))))
(assert (str.in_re y (re.* (re.++ (re.* (re.range "0" "6")) (re.range "7" "9")))))

(assert (< (+ (* (- 8) (str.len x)) (* (- 6) (str.len y))) 45))
(assert (< (+ (* (- 5) (str.to_int x)) (str.to_int y)) 37))

(check-sat)