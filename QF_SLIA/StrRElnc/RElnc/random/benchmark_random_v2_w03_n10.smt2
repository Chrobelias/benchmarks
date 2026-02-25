(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "35" y)))

(assert (str.in_re x (re.* (re.union (re.* (re.range "1" "7")) (re.* (str.to_re "41"))))))
(assert (str.in_re y (re.union (re.+ (re.union (re.* (str.to_re "5")) (str.to_re "54"))) (re.range "7" "9"))))

(assert (< (+ (* (- 8) (str.to_int x)) (* (- 5) (str.to_int y))) 71))
(assert (>= (+ (* 9 (str.len x)) (* (- 7) (str.len y))) 60))
(assert (> (* 4 (str.to_int y)) 83))

(check-sat)