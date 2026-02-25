(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.++ (str.to_re "67") (re.++ (re.* (re.range "2" "7")) (str.to_re "145")))))

(assert (= (+ (* (- 7) (str.len x)) (* 2 (str.to_int x))) 71))
(assert (> (+ (* 3 (str.len x)) (* (- 8) (str.to_int x))) 30))

(check-sat)