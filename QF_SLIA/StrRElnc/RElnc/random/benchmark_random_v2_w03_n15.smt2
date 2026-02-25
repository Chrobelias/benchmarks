(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "88")))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "336")) (str.to_re "83")))))
(assert (str.in_re y (re.++ (re.* (re.range "2" "9")) (re.* (str.to_re "559")))))

(assert (= (* (- 9) (str.len x)) 37))
(assert (= (+ (str.to_int x) (* (- 4) (str.to_int y))) 71))
(assert (<= (+ (* 9 (str.len x)) (* 7 (str.len y))) 62))

(check-sat)