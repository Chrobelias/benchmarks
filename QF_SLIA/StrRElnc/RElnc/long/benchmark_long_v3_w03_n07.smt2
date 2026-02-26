(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= z (str.++ y x "42")))

(assert (str.in_re y (re.+ (re.+ (str.to_re "265")))))
(assert (str.in_re z (re.+ (re.+ (re.* (re.range "0" "7"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "5") (re.++ (re.range "2" "7") (re.+ (re.range "2" "7")))))))

(assert (<= (+ (* 7 (str.len x)) (* 6 (str.len y)) (* 7 (str.len z))) 41))
(assert (>= (+ (* (- 5) (str.len x)) (* 8 (str.len y)) (str.to_int x)) 95))

(check-sat)