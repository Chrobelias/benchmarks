(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "77" y) (str.++ x "54")))

(assert (str.in_re y (re.* (re.+ (re.union (re.* (re.range "3" "6")) (str.to_re "740"))))))
(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "21")) (str.to_re "596")) (re.+ (re.range "6" "8")))))

(assert (< (+ (* 4 (str.len x)) (* (- 2) (str.len y)) (str.to_int x) (* 9 (str.to_int y))) 45))

(check-sat)